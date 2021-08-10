import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/log_in/log_in_bloc.dart';
import 'package:nipange/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/auth/log_in/log_in.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class SignUpFormPage extends StatelessWidget {
  final String route;
  SignUpFormPage({
    Key? key,
    required this.route,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String regEx =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    return Scaffold(
      appBar: AppBar(
        title: Text('sign up'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
              listener: (context, state) {
            if (state.isSuccess) {
              Navigator.of(context, rootNavigator: true).pushNamed(
                'signup/logindetails',
                arguments: <String, String>{
                  'firstname': state.firstname!.trim(),
                  'lastname': state.lastname!.trim(),
                  'phone': state.phone!.trim(),
                  'email': state.email!.trim(),
                  'route': route,
                },
              );
            }
          }, builder: (context, state) {
            return Column(
              children: [
                SizedBox(height: 80),

                //form
                Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),

                          //firstname field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "First name",
                              prefixIcon: Icon(
                                Icons.person,
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
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.firstnameChanged(value));
                            },
                            validator: (name) {
                              if (name!.length > 2)
                                return null;
                              else
                                return "name too short";
                            },
                          ),
                          SizedBox(height: 20),

                          //lastname field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Last name",
                              prefixIcon: Icon(
                                Icons.person,
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
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.lastnameChanged(value));
                            },
                            validator: (name) {
                              if (name!.length > 2)
                                return null;
                              else
                                return "name too short";
                            },
                          ),
                          SizedBox(height: 20),

                          //phone field
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "eg. 0767345678",
                              prefixIcon: Icon(
                                Icons.phone,
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
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.phoneChanged(value));
                            },
                            validator: (phone) {
                              if (phone!.startsWith('0') && phone.length == 10)
                                return null;
                              else
                                return "enter a valid phone number";
                            },
                          ),
                          SizedBox(height: 20),

                          //email field
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
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
                            ),
                            cursorColor: Theme.of(context).primaryColorDark,
                            onChanged: (value) {
                              context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.emailChanged(value));
                            },
                            validator: (email) {
                              if (RegExp(regEx).hasMatch(email!))
                                return null;
                              else
                                return "enter valid email";
                            },
                          ),
                          SizedBox(height: 30),

                          //sign up btn
                          ElevatedButton(
                            onPressed: validate(state, regEx)
                                ? () {
                                    context.read<SignUpFormBloc>().add(
                                        SignUpFormEvent
                                            .signUpWithEmailAndPasswordPressed());
                                  }
                                : null,
                            child: Text('Sign up'),
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
                          )
                        ],
                      ),
                    )),

                //progress indicator
                if (state.isSubmitting) KCircularProgressIndicator(),
                //error
                if (state.failuremessage != null)
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      state.failuremessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                SizedBox(
                  height: 40,
                ),
                //privacy terms
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "By signing up you agree to our ",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.black38),
                      children: [
                        TextSpan(
                            text: "Terms of Service ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                    )),
                        TextSpan(
                            text: "and acknowledge that you have read our  ",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: Colors.black38)),
                        TextSpan(
                            text: "Privacy Policy ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                    )),
                        TextSpan(
                          text:
                              "to learn how We collect, use and share your data.",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                ),

                //log in
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 25),
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.bodyText2!,
                      children: [
                        TextSpan(
                            text: "Log in",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Theme.of(context).primaryColorLight),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.of(context, rootNavigator: true)
                                      .push(
                                          MaterialPageRoute(builder: (context) {
                                    return BlocProvider(
                                        create: (context) => getIt<LogInBloc>(),
                                        child: LoginPage(
                                          gotoRoute: route,
                                        ));
                                  }))),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

bool validate(SignUpFormState state, String regEx) {
  return (state.firstname!.length > 2 &&
      state.lastname!.length > 2 &&
      state.phone!.startsWith('0') &&
      state.phone!.length == 10 &&
      RegExp(regEx).hasMatch(state.email!));
}
