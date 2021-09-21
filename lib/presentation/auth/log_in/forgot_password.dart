import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/forgot_password/forgot_password_bloc.dart';

import 'package:nipange/widgets/progress_indicator.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  int _start = 60;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _start = 60;
          });
          context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.timeOut());
        } else {
          if (mounted)
            setState(() {
              _start--;
            });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.isSuccess) {
              startTimer();
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                //loading indicator
                if (state.isLoading) KCircularProgressIndicator(),
                if (state.isSuccess)
                  Container(
                    color: Theme.of(context).primaryColorDark,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.topCenter,
                    child: Text(
                      """Verification link has been successfully sent to ${state.email}. Open email to reset your password""",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                if (state.failureMessage.isNotEmpty)
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                    alignment: Alignment.topCenter,
                    color: Colors.red,
                    child: Text(
                      "${state.failureMessage}, try again",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.only(top: 80, bottom: 40),
                  alignment: Alignment.center,
                  child: Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 8, left: 18, right: 18),
                  child: Text(
                    "Enter your email address below and a verification link will be sent to you automatically",
                    textAlign: TextAlign.center,
                  ),
                ),

                //email field
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 12),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      onChanged: (value) {
                        context
                            .read<ForgotPasswordBloc>()
                            .add(ForgotPasswordEvent.emailChanged(value));
                      },
                      validator: (email) {
                        if (email!.isNotEmpty)
                          return null;
                        else
                          return 'Enter email or username';
                      },
                    ),
                  ),
                ),

                SizedBox(height: 15),
                //sign up btn
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ElevatedButton(
                    onPressed: (state.email.isEmpty || state.isSuccess) &&
                            state.isLoading
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
                            Size(MediaQuery.of(context).size.width, 50)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.disabled))
                            return Colors.grey;
                          return Theme.of(context).primaryColorDark;
                        }),
                        elevation: MaterialStateProperty.all(6),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                ),

                //try again
                if (state.isSuccess)
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
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
