import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:nipange/core/theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  Timer? _timer;
  int _start = 60;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _start = 60;
          });
          context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.timeOut());
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.isSuccess) {
              startTimer();
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, left: 5),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                if (state.isSuccess)
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.topCenter,
                    child: Text(
                      """Verification link has been successfully sent to ${state.emailController.value.text}. Open email to reset your password""",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                if (state.failureMessage.isNotEmpty)
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.topCenter,
                    color: Colors.red,
                    child: Text(
                      "${state.failureMessage}, try again",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.only(top: 80),
                  alignment: Alignment.center,
                  child: Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                      """Enter your email address below and a verification link 
                    will be sent to you automatically"""),
                ),

                //email field
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: state.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.perm_identity),
                    ),
                    validator: (emailOrUsername) {
                      if (emailOrUsername!.isNotEmpty)
                        return null;
                      else
                        return 'Enter email or username';
                    },
                  ),
                ),
                SizedBox(height: 5),

                //sign up btn
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: state.emailController.value.text.isEmpty ||
                            state.isSuccess
                        ? null
                        : () {
                            print('pressed');
                            context
                                .read<ForgotPasswordBloc>()
                                .add(ForgotPasswordEvent.send());
                          },
                    child: Text('Send'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 60)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFFC5185)),
                    ),
                  ),
                ),

                //loading indicator
                if (state.isLoading) LinearProgressIndicator(),
                //try again
                if (state.isSuccess)
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                          "If you have not received email, try again in $_start seconds"))
              ],
            );
          },
        ),
      ),
    );
  }
}
