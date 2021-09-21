import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/reset_password/resetpassword_bloc.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class ResetPasswordPage extends StatelessWidget {
  final String id;
  const ResetPasswordPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: BlocBuilder<ResetpasswordBloc, ResetpasswordState>(
        builder: (contxt, state) {
          return ListView(
            children: [
              if (state.isSuccess)
                Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Congratulations your password has been successfull changed, now you can go back and log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              // error
              if (state.failureMessage.isNotEmpty)
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  alignment: Alignment.topCenter,
                  color: Colors.red,
                  child: Text(
                    state.failureMessage,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              // reset pass header
              Container(
                padding: EdgeInsets.only(top: 60, bottom: 40),
                alignment: Alignment.center,
                child: Text(
                  'Reset Your Password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 0, left: 18, right: 18),
                child: Text("Enter your new password below",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2),
              ),

              SizedBox(height: 20),

              // form
              Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //new pass field
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 8),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "new password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onChanged: (value) {
                              context.read<ResetpasswordBloc>().add(
                                  ResetpasswordEvent.passwordChanged(value));
                            },
                            validator: (password) {
                              if (password!.length > 5)
                                return null;
                              else
                                return 'Password must contain atleast 6 characters with numbers';
                            },
                          ),
                        ),

                        //confirm pass field
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 8),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "confirm password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onChanged: (value) {
                              context.read<ResetpasswordBloc>().add(
                                  ResetpasswordEvent.confirmChanged(value));
                            },
                            validator: (confirm) {
                              if (confirm == state.password)
                                return null;
                              else
                                return 'Password do not match';
                            },
                          ),
                        ),
                      ])),
              SizedBox(height: 20),

              //sign up btn
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: state.password.length > 5 &&
                          state.confirm == state.password
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
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColorDark),
                      elevation: MaterialStateProperty.all(6),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                ),
              ),

              //loading indicator
              if (state.isLoading) KCircularProgressIndicator(),
            ],
          );
        },
      )),
    );
  }
}
