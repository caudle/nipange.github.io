import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:nipange/application/auth/log_in/log_in_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/auth/log_in/forgot_password.dart';
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
                                      state.password.isNotEmpty
                                  ? () {
                                      context.read<LogInBloc>().add(LogInEvent
                                          .logInWithEmailAndPasswordPressed());
                                    }
                                  : null,
                              child: Text('Log in'),
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width, 60)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).primaryColorLight),
                                  elevation: MaterialStateProperty.all(6),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                            ),

                            //progress indicator
                            if (state.isSubmitting)
                              KCircularProgressIndicator(),

                            //error
                            if (state.failureMessage.isNotEmpty)
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  context
                                      .read<LogInBloc>()
                                      .state
                                      .failureMessage,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                          ],
                        ),
                      )),

                  //forgot password
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 18),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BlocProvider(
                                create: (context) =>
                                    getIt<ForgotPasswordBloc>(),
                                child: ForgotPasswordPage());
                          }),
                        );
                      },
                      child: Text('Forgot password?',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: Theme.of(context).primaryColorLight)),
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
                                          Theme.of(context).primaryColorLight),
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
