import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nipange/application/auth/log_in/log_in_bloc.dart';
import 'package:nipange/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/auth/log_in/log_in.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

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
    final bloc = context.read<SignUpFormBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
              listener: (context, state) {
            if (state.isSuccess) {
              // otp verification
              sendOTPCode(
                  phoneNumber: state.phone!.replaceFirst(RegExp(r'0'), '+255'),
                  context: context,
                  state: state,
                  bloc: bloc,
                  route: route);
            }
            if (state.isOtpFailed) {
              // show snackbar
              print('creating snackbar');
              final snackBar = SnackBar(
                content: Text(
                  state.otpError!,
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 10),
                backgroundColor: Theme.of(context).primaryColorLight,
              );
              print('showing snackbar');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            if (state.issocialSuccess) {
              // go back
              Navigator.of(context, rootNavigator: true)
                  .popUntil(ModalRoute.withName(route));
            }
          }, builder: (context, state) {
            return Column(
              children: [
                //progress indicator
                if (state.isSubmitting) KCircularProgressIndicator(),
                //error
                if (state.failuremessage != null)
                  CustomErrorWidget(error: state.failuremessage!),
                SizedBox(height: 50),

                //form
                Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
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
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
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

                          SizedBox(height: 15),

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
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
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

                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                                "We'll call or text you to confirm your phone number. Standard message and data rates apply.",
                                style: TextStyle(fontSize: 10)),
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 20),

                //sign up btn
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: validate(state, regEx) && !state.isSubmitting
                        ? () {
                            context.read<SignUpFormBloc>().add(SignUpFormEvent
                                .signUpWithEmailAndPasswordPressed());
                          }
                        : null,
                    child: Text('Sign up'),
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
                // or
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                  child: Text(
                    'or',
                    textAlign: TextAlign.center,
                  ),
                ),
                // google sign in
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton.icon(
                    onPressed: !state.isSubmitting
                        ? () {
                            print('google btn preesed');
                            context.read<SignUpFormBloc>().add(
                                SignUpFormEvent.signUpWithGoogle(
                                    Platform.operatingSystem));
                          }
                        : null,
                    icon: FaIcon(FontAwesomeIcons.google,
                        color: Color.fromRGBO(219, 50, 54, 36)),
                    label: Text('Continue with Google'),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 50)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.black))),
                  ),
                ),
                // facebook
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: ElevatedButton.icon(
                    onPressed: !state.isSubmitting
                        ? () {
                            print('facebook btn preesed');
                            context.read<SignUpFormBloc>().add(
                                SignUpFormEvent.signUpWithFacebook(
                                    Platform.operatingSystem));
                          }
                        : null,
                    icon: FaIcon(FontAwesomeIcons.facebook,
                        color: Color.fromRGBO(66, 103, 178, 2)),
                    label: Text('Continue with Facebook'),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 50)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.black))),
                  ),
                ),
                // twiiter sign in
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton.icon(
                    onPressed: !state.isSubmitting
                        ? () {
                            print('twitter btn preesed');
                            context.read<SignUpFormBloc>().add(
                                SignUpFormEvent.signUpWithGoogle(
                                    Platform.operatingSystem));
                          }
                        : null,
                    icon: FaIcon(FontAwesomeIcons.twitter,
                        color: Color.fromRGBO(29, 161, 242, 100)),
                    label: Text('Continue with twitter'),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 50)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.black))),
                  ),
                ),

                SizedBox(
                  height: 30,
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
                          .bodyText2!
                          .copyWith(fontSize: 10),
                      children: [
                        TextSpan(
                            text: "Terms of Service ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 10,
                                    )),
                        TextSpan(
                            text: "and acknowledge that you have read our  ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontSize: 10)),
                        TextSpan(
                            text: "Privacy Policy ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 10,
                                    )),
                        TextSpan(
                          text:
                              "to learn how We collect, use and share your data.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),

                //log in
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
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
                                    color: Theme.of(context).primaryColorDark),
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
  return (state.phone!.startsWith('0') &&
      state.phone!.length == 10 &&
      RegExp(regEx).hasMatch(state.email!));
}

Future sendOTPCode(
    {required String phoneNumber,
    required BuildContext context,
    required SignUpFormState state,
    required SignUpFormBloc bloc,
    required String route}) async {
  _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: Duration(seconds: 60),
    verificationCompleted: (phoneAuthCredential) {
      onVerificationCompleted(
          phoneAuthCredential: phoneAuthCredential,
          context: context,
          state: state,
          route: route);
    },
    verificationFailed: (exception) {
      onVerificationFailed(exception, bloc);
    },
    codeSent: (verificationId, forceResendToken) {
      onCodeSent(
          verificationId: verificationId,
          context: context,
          route: route,
          bloc: bloc,
          phoneNumber: phoneNumber);
    },
    codeAutoRetrievalTimeout: oncodeAutoRetrievalTimeout,
  );
}

void onVerificationCompleted(
    {required PhoneAuthCredential phoneAuthCredential,
    required BuildContext context,
    required SignUpFormState state,
    required String route}) {
  _auth.signInWithCredential(phoneAuthCredential).then((userCredential) {
    //go to login details route
    Navigator.of(context, rootNavigator: true).pushNamed(
      'signup/logindetails',
      arguments: <String, String>{
        'phone': state.phone!.trim(),
        'email': state.email!.trim(),
        'route': route,
      },
    );
  }).catchError((e) {
    print(e);
  });
}

void onVerificationFailed(
  FirebaseAuthException exception,
  SignUpFormBloc bloc,
) {
  print(" v failed: ${exception.message}");
  bloc..add(SignUpFormEvent.otpFailed(exception.message!));
}

void onCodeSent(
    {required String verificationId,
    int? forceResendToken,
    required BuildContext context,
    required String phoneNumber,
    required SignUpFormBloc bloc,
    required String route}) {
  // start timer
  startTimer(context: context, bloc: bloc);
  showDialog(
      context: context,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: AlertDialog(
            title: Text("Enter SMS code"),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: bloc.state.otpController,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<SignUpFormBloc, SignUpFormState>(
                    builder: (context, state) {
                      return Text(
                        "If you have not received code, press resend in ${state.startTime} seconds",
                        textAlign: TextAlign.justify,
                      );
                    },
                  ),
                ],
              ),
            ),
            actions: [
              // resend btn
              BlocBuilder<SignUpFormBloc, SignUpFormState>(
                builder: (context, state) {
                  return TextButton(
                    onPressed: state.resendCode
                        ? () {
                            // resend code
                            _auth.verifyPhoneNumber(
                              phoneNumber: phoneNumber,
                              timeout: Duration(seconds: 60),
                              verificationCompleted: (phoneAuthCredential) {
                                onVerificationCompleted(
                                    phoneAuthCredential: phoneAuthCredential,
                                    context: context,
                                    state: state,
                                    route: route);
                              },
                              verificationFailed: (exception) {
                                onVerificationFailed(exception, bloc);
                              },
                              codeSent: (verificationId, forceResendToken) {
                                onCodeSent(
                                  verificationId: verificationId,
                                  context: context,
                                  route: route,
                                  phoneNumber: phoneNumber,
                                  bloc: bloc,
                                );
                              },
                              codeAutoRetrievalTimeout:
                                  oncodeAutoRetrievalTimeout,
                              forceResendingToken: forceResendToken,
                            );
                          }
                        : null,
                    child: Text('Resend', textAlign: TextAlign.end),
                  );
                },
              ),

              // done btn
              TextButton(
                  onPressed: () {
                    final credential = PhoneAuthProvider.credential(
                        verificationId: verificationId,
                        smsCode: bloc.state.otpController.value.text.trim());
                    _auth.signInWithCredential(credential).then((credential) {
                      //go to login details route
                      Navigator.of(context, rootNavigator: true)
                          .pushReplacementNamed(
                        'signup/logindetails',
                        arguments: <String, String>{
                          'phone': bloc.state.phone!.trim(),
                          'email': bloc.state.email!.trim(),
                          'route': route,
                        },
                      );
                    }, onError: (e) {
                      print('code sent error: $e');
                      Navigator.of(context, rootNavigator: true).pop();
                      bloc..add(SignUpFormEvent.otpFailed(e.toString()));
                    });
                  },
                  child: Text('Done', textAlign: TextAlign.end),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColorDark),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))))),
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
        );
      });
}

void oncodeAutoRetrievalTimeout(String verificationId) {
  print(verificationId);
  print('time out');
}

void startTimer({required BuildContext context, required SignUpFormBloc bloc}) {
  Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      if (bloc.state.startTime == 0) {
        timer.cancel();
        bloc.add(SignUpFormEvent.startTimeChanged(60, true));
      } else {
        final int time = bloc.state.startTime - 1;
        bloc.add(SignUpFormEvent.startTimeChanged(time, false));
      }
    },
  );
}
