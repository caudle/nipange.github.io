import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:nipange/application/auth/log_in/log_in_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/auth/log_in/forgot_password.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class LoginPage extends StatelessWidget {
  final String gotoRoute;
  LoginPage({
    Key? key,
    required this.gotoRoute,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<LogInBloc, LogInState>(
            listener: (context, state) {
              if (state.isSuccess)
                Navigator.of(context, rootNavigator: true)
                    .popUntil(ModalRoute.withName(gotoRoute));
            },
            builder: (context, state) {
              return Column(
                children: [
                  //progress indicator
                  if (state.isSubmitting) KCircularProgressIndicator(),

                  //error
                  if (state.failureMessage.isNotEmpty)
                    CustomErrorWidget(error: state.failureMessage),
                  SizedBox(height: 160),
                  //form
                  Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            //email or username field
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Email or Username",
                                prefixIcon: Icon(
                                  Icons.perm_identity,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                              ),
                              cursorColor: Theme.of(context).primaryColorDark,
                              onChanged: (value) {
                                context
                                    .read<LogInBloc>()
                                    .add(LogInEvent.emailChanged(value));
                              },
                              validator: (emailOrUsername) {
                                if (emailOrUsername!.isNotEmpty)
                                  return null;
                                else
                                  return 'Enter email or username';
                              },
                            ),
                            SizedBox(height: 20),

                            //password field
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                              ),
                              cursorColor: Theme.of(context).primaryColorDark,
                              onChanged: (value) {
                                context
                                    .read<LogInBloc>()
                                    .add(LogInEvent.passwordChanged(value));
                              },
                              validator: (password) {
                                if (password!.isNotEmpty)
                                  return null;
                                else
                                  return 'Enter password';
                              },
                            ),

                            SizedBox(height: 20),

                            //sign up btn
                            ElevatedButton(
                              onPressed: state.email.isNotEmpty &&
                                      state.password.isNotEmpty &&
                                      !state.isSubmitting
                                  ? () {
                                      context.read<LogInBloc>().add(LogInEvent
                                          .logInWithEmailAndPasswordPressed());
                                    }
                                  : null,
                              child: Text('Log in'),
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width, 50)),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) {
                                    if (states.contains(MaterialState.disabled))
                                      return Colors.grey;
                                    return Theme.of(context).primaryColorDark;
                                  }),
                                  elevation: MaterialStateProperty.all(6),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                            ),
                          ],
                        ),
                      )),

                  //forgot password
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 18),
                    child: TextButton(
                      onPressed: !state.isSubmitting
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return BlocProvider(
                                      create: (context) =>
                                          getIt<ForgotPasswordBloc>(),
                                      child: ForgotPasswordPage());
                                }),
                              );
                            }
                          : null,
                      child: Text('Forgot password?',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Theme.of(context).primaryColorDark)),
                    ),
                  ),

                  //dont have an account
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(top: 50),
                    child: RichText(
                      text: TextSpan(
                        text: "Don\'t have an account? ",
                        style: Theme.of(context).textTheme.bodyText2,
                        children: [
                          TextSpan(
                              text: "Sign up",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color:
                                          Theme.of(context).primaryColorDark),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.pop(context)),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
