import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/reset_password/resetpassword_bloc.dart';
import 'package:nipange/core/theme.dart';

class ResetPasswordPage extends StatelessWidget {
  final String id;
  const ResetPasswordPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: BlocConsumer<ResetpasswordBloc, ResetpasswordState>(
        listener: (context, state) {},
        builder: (contxt, state) {
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

              // reset pass header
              Container(
                padding: EdgeInsets.only(top: 80),
                alignment: Alignment.center,
                child: Text(
                  'Reset Your Password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                    """Enter your new password below and a log in automatically"""),
              ),

              //new pass field
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: state.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "New password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (password) {
                    if (password!.length > 5)
                      return null;
                    else
                      return 'Password must contain atleast 6 characters with numbers';
                  },
                ),
              ),
              SizedBox(height: 5),

              //confirm pass field
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: state.confirmController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (confirm) {
                    if (confirm == state.passwordController.value.text)
                      return null;
                    else
                      return 'Password do not match';
                  },
                ),
              ),
              SizedBox(height: 5),

              //sign up btn
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: state.passwordController.value.text.length > 5 &&
                          state.confirmController.value.text ==
                              state.passwordController.value.text
                      ? () {
                          context
                              .read<ResetpasswordBloc>()
                              .add(ResetpasswordEvent.reset(id));
                        }
                      : null,
                  child: Text('Reset'),
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

              //error
              if (state.failureMessage.isNotEmpty)
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    context.read<ResetpasswordBloc>().state.failureMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
            ],
          );
        },
      )),
    );
  }
}
