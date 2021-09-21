import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/account/account_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/person_info/person_bloc.dart';
import 'package:nipange/domain/user/user.dart' as myUser;
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/account/widgets/person_info.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class AccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _accountBloc = context.read<AccountBloc>();
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AccountBloc, AccountState>(
          listener: (context, state) {
            // signOut
            if (state.isSignout) {
              // navgate to explore route
              print('signing out');
              context.read<AuthBloc>()..add(AuthEvent.started());
            }
            // dp changed failed
            if (state.failure.isNotEmpty) {
              // show snackbar
              print('creating snackbar');
              final snackBar = SnackBar(
                content: Text(
                  'profile picture update failed, try again',
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Theme.of(context).primaryColorLight,
              );
              print('showing snackbar');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }

            // email verify success
            if (state.isverifyEmailSucess) {
              // show snackbar
              print('creating snackbar');
              final snackBar = SnackBar(
                content: Text(
                  'Email verified successful',
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Theme.of(context).primaryColorLight,
              );
              print('showing snackbar');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }

            // phone verificatn success
            if (state.isVerifyPhoneSuccess) {
              // show snackbar
              print('creating snackbar');
              final snackBar = SnackBar(
                content: Text(
                  'Phone verified successful',
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Theme.of(context).primaryColorLight,
              );
              print('showing snackbar');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }

            // phone verf err
            if (state.isVerifyPhoneFailed) {
              // show snackbar
              print('creating snackbar');
              final snackBar = SnackBar(
                content: Text(
                  'failed: ${state.verifyPhoneError}',
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Theme.of(context).primaryColorLight,
              );
              print('showing snackbar');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            return FutureBuilder<myUser.User>(
              future: state.futureUser,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: [
                      // profile
                      Container(
                        margin: const EdgeInsets.only(bottom: 18),
                        height: 200,
                        child: Material(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              top: 10,
                              right: 8,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // dp
                                snapshot.data!.dp.isNotEmpty
                                    ? Expanded(
                                        flex: 4,
                                        child: GestureDetector(
                                          child: CircleAvatar(
                                            radius: 60,
                                            backgroundImage: state.dp != null
                                                ? FileImage(state.dp!)
                                                    as ImageProvider
                                                : NetworkImage(
                                                    '$api/${snapshot.data!.dp}'),
                                          ),
                                          onTap: () {
                                            getDp(snapshot.data!.id, context);
                                          },
                                        ),
                                      )
                                    : Expanded(
                                        flex: 4,
                                        child: GestureDetector(
                                          child: CircleAvatar(
                                            backgroundImage: state.dp != null
                                                ? FileImage(state.dp!)
                                                : null,
                                            child: state.dp == null
                                                ? Text(snapshot.data!.username
                                                        .isNotEmpty
                                                    ? '${snapshot.data!.username[0].toUpperCase()}'
                                                    : '')
                                                : null,
                                            radius: 60,
                                          ),
                                          onTap: () {
                                            getDp(snapshot.data!.id, context);
                                          },
                                        ),
                                      ),

                                SizedBox(height: 12),

                                // name
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      text: snapshot.data!.username,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      children: [
                                        TextSpan(
                                            text: snapshot
                                                    .data!.createdAt.isNotEmpty
                                                ? ' . Joined in ${DateTime.parse(snapshot.data!.createdAt).toReadable()}'
                                                : '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                      ],
                                    ),
                                  ),
                                ),

                                // type
                                Expanded(
                                    //flex: 2,
                                    child: Text(
                                  snapshot.data!.type.isNotEmpty
                                      ? snapshot.data!.type
                                      : '',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(22))),
                        ),
                      ),
                      // loading
                      if (state.isSubmit) KCircularProgressIndicator(),

                      // error email verification
                      if (state.verifyEmailError.isNotEmpty)
                        CustomErrorWidget(error: state.verifyEmailError),

                      // account settings
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 12, bottom: 8),
                        child: Text(
                          'Account settings',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),

                      // verify email
                      if (!snapshot.data!.isEmailVerified)
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                                left: 18, top: 12, bottom: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    'Verify email address',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).accentColor),
                                  ),
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                )),
                              ],
                            ),
                          ),
                          onTap: () {
                            verifyEmail(
                                id: snapshot.data!.id,
                                email: snapshot.data!.email,
                                bloc: _accountBloc,
                                context: context);
                          },
                        ),

                      // verify phone
                      if (!snapshot.data!.isPhoneVerified)
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                                left: 18.0, top: 0, bottom: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    'Verify phone number',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).accentColor),
                                  ),
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                )),
                              ],
                            ),
                          ),
                          onTap: () {
                            verifyPhone(
                              phone: snapshot.data!.phone
                                  .replaceFirst(RegExp(r'0'), '+255'),
                              bloc: _accountBloc,
                              context: context,
                            );
                          },
                        ),

                      //person info
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 8, bottom: 8),
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text('Personal information',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ),
                              Expanded(
                                  child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ))
                            ],
                          ),
                          onTap: () {
                            //nav to personal info
                            Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(builder: (context) {
                              return BlocProvider(
                                create: (context) => getIt<PersonBloc>()
                                  ..add(PersonEvent.started(
                                    phone: snapshot.data!.phone,
                                    username: snapshot.data!.username,
                                    email: snapshot.data!.email,
                                    id: snapshot.data!.id,
                                  )),
                                child: PersonInfo(),
                              );
                            })).then((value) => context
                                .read<AccountBloc>()
                                .add(AccountEvent.started(snapshot.data!.id)));
                          },
                        ),
                      ),
                      Divider(),
                      // acc type
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 12, bottom: 8),
                        child: Text(
                          'Account switch',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      // switch
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 8, bottom: 8),
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Text(
                                  'Hosting',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              Expanded(
                                  child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ))
                            ],
                          ),
                          onTap: () {
                            // navgate to host route
                            Navigator.of(context, rootNavigator: true)
                                .pushReplacementNamed('host');
                          },
                        ),
                      ),

                      Divider(),

                      // about
                      Container(
                        margin: EdgeInsets.only(
                            left: 18, top: 12, right: 18, bottom: 8),
                        child: Text(
                          'About',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 8, right: 18, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex: 2, child: Icon(Icons.security)),
                              Expanded(
                                  flex: 9,
                                  child: Text(
                                    'Terms of service',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  )),
                              Spacer(flex: 3),
                              Expanded(
                                  child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ))
                            ],
                          ),
                        ),
                        onTap: () {
                          // terms of sev
                        },
                      ),
                      Divider(),

                      // policy
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 12, right: 18, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(flex: 2, child: Icon(Icons.privacy_tip)),
                              Expanded(
                                  flex: 9,
                                  child: Text(
                                    'Privacy policy',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  )),
                              Spacer(flex: 3),
                              Expanded(
                                  child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ))
                            ],
                          ),
                        ),
                        onTap: () {
                          // privacy polc
                        },
                      ),
                      Divider(),

                      // log out
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 20, bottom: 30),
                          child: Text(
                            'Log out',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        onTap: () {
                          showLogoutDialog(context).then((value) {
                            if (value!) {
                              context
                                  .read<AccountBloc>()
                                  .add(AccountEvent.signOut());
                            }
                          });
                        },
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return CustomErrorWidget(error: snapshot.error.toString());
                }
                return ListView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.grey[200],
                          height: 200,
                          margin: EdgeInsets.only(bottom: 15),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 2 - 60,
                          top: 10,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55,
                          right: 18,
                          left: 18,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            color: Colors.grey,
                            height: 20,
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 3.2,
                          bottom: 30,
                          child: Container(
                            width: 150,
                            color: Colors.grey,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 18),
                      color: Colors.grey[200],
                      height: MediaQuery.of(context).size.height,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  //get dp
  Future getDp(String userId, BuildContext context) async {
    // get image
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null)
      context
          .read<AccountBloc>()
          .add(AccountEvent.dpChanged(File(pickedFile.path), userId));
    else
      print('failed to get image ');
  }
}

verifyEmail({
  required String id,
  required String email,
  required AccountBloc bloc,
  required BuildContext context,
}) {
  if (email.isEmpty) {
    // show alert dialog
    createEmailDialog(bloc: bloc, context: context).then((value) {
      if (value != null) {
        // add event
        bloc.add(AccountEvent.verifyEmail(id: id, email: value));
      }
    });
  } else {
    bloc.add(AccountEvent.verifyEmail(id: id, email: email));
  }
}

Future createEmailDialog({
  required AccountBloc bloc,
  required BuildContext context,
}) async {
  final String regEx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  return showDialog(
      context: context,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
              return AlertDialog(
                title: Text('Enter email address'),
                content: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    ),
                    onChanged: (value) {
                      bloc.add(AccountEvent.emailChanged(value));
                    },
                    cursorColor: Theme.of(context).primaryColorDark,
                    validator: (email) {
                      if (RegExp(regEx).hasMatch(email!))
                        return null;
                      else
                        return "enter valid email";
                    },
                  ),
                ),
                actions: [
                  // verify btn
                  TextButton(
                    onPressed:
                        RegExp(regEx).hasMatch(state.email) && !state.isSubmit
                            ? () {
                                // dismiss dailog
                                Navigator.pop(context, state.email);
                              }
                            : null,
                    child: Text('Verify'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.disabled))
                            return Colors.grey;
                          return Theme.of(context).primaryColorDark;
                        }),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(Size(100, 40)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)))),
                  ),
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        );
      });
}

verifyPhone({
  required String phone,
  required BuildContext context,
  required AccountBloc bloc,
}) {
  if (phone.isEmpty) {
    // show dialog
    createPhoneDialog(bloc: bloc, context: context).then((value) {
      if (value != null) {
        sendOTPCode(
          phoneNumber: value.replaceFirst(RegExp(r'0'), '+255'),
          context: context,
          bloc: bloc,
        );
      }
    });
  } else {
    sendOTPCode(
      phoneNumber: phone,
      context: context,
      bloc: bloc,
    );
  }
}

Future createPhoneDialog({
  required AccountBloc bloc,
  required BuildContext context,
}) async {
  return showDialog(
      context: context,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocConsumer<AccountBloc, AccountState>(
            listener: (context, state) {
              if (state.isphoneValid) {
                // dismiss dailog
                Navigator.pop(context, state.phone);
              }
            },
            builder: (context, state) {
              return AlertDialog(
                title: Text('Enter phone number'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "eg. 0767345678",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        ),
                        onChanged: (value) {
                          bloc.add(AccountEvent.phoneChanged(value));
                        },
                        cursorColor: Theme.of(context).primaryColorDark,
                        validator: (phone) {
                          if (phone!.startsWith('0') && phone.length == 10)
                            return null;
                          else
                            return "enter a valid phone number";
                        },
                      ),
                    ),
                    // loading
                    if (state.isSubmit) KCircularProgressIndicator(),
                    if (state.phoneValidError.isNotEmpty)
                      CustomErrorWidget(error: state.phoneValidError),
                  ],
                ),
                actions: [
                  // verify btn
                  TextButton(
                    onPressed: state.phone.startsWith('0') &&
                            state.phone.length == 10 &&
                            !state.isSubmit
                        ? () {
                            // add validate phone event
                            bloc.add(AccountEvent.validatePhone(state.phone));
                          }
                        : null,
                    child: Text('Verify'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.disabled))
                            return Colors.grey;
                          return Theme.of(context).primaryColorDark;
                        }),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(Size(100, 40)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)))),
                  ),
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        );
      });
}

Future sendOTPCode({
  required String phoneNumber,
  required BuildContext context,
  required AccountBloc bloc,
}) async {
  _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: Duration(seconds: 60),
    verificationCompleted: (phoneAuthCredential) {
      onVerificationCompleted(
        phoneAuthCredential: phoneAuthCredential,
        context: context,
        bloc: bloc,
      );
    },
    verificationFailed: (exception) {
      onVerificationFailed(exception, bloc);
    },
    codeSent: (verificationId, forceResendToken) {
      onCodeSent(
        verificationId: verificationId,
        context: context,
        bloc: bloc,
        phoneNumber: phoneNumber,
      );
    },
    codeAutoRetrievalTimeout: oncodeAutoRetrievalTimeout,
  );
}

void onVerificationCompleted({
  required PhoneAuthCredential phoneAuthCredential,
  required BuildContext context,
  required AccountBloc bloc,
}) {
  _auth.signInWithCredential(phoneAuthCredential).then((userCredential) {
    // add success event
    bloc.add(
        AccountEvent.phoneVerified(success: true, failure: false, error: ''));
  }).catchError((e) {
    print(e);
  });
}

void onVerificationFailed(
  FirebaseAuthException exception,
  AccountBloc bloc,
) {
  print(" v failed: ${exception.message}");
  // add failure event
  bloc.add(AccountEvent.phoneVerified(
      success: false, failure: true, error: 'failed: ${exception.message}'));
}

void onCodeSent({
  required String verificationId,
  int? forceResendToken,
  required BuildContext context,
  required String phoneNumber,
  required AccountBloc bloc,
}) {
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
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    ),
                    onChanged: (value) {
                      bloc.add(AccountEvent.otpCodeChanged(value));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<AccountBloc, AccountState>(
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
              BlocBuilder<AccountBloc, AccountState>(
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
                                    bloc: bloc);
                              },
                              verificationFailed: (exception) {
                                onVerificationFailed(exception, bloc);
                              },
                              codeSent: (verificationId, forceResendToken) {
                                onCodeSent(
                                  verificationId: verificationId,
                                  context: context,
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
              BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        final credential = PhoneAuthProvider.credential(
                            verificationId: verificationId,
                            smsCode: bloc.state.otpCode.trim());
                        _auth.signInWithCredential(credential).then(
                            (credential) {
                          // stop timer
                          state.timer!.cancel();
                          Navigator.of(context, rootNavigator: true).pop();
                          // add success event
                          bloc.add(AccountEvent.phoneVerified(
                              success: true, failure: false, error: ''));
                        }, onError: (e) {
                          state.timer!.cancel();
                          print('code sent error shit failed: ');
                          Navigator.of(context, rootNavigator: true).pop();
                          // add error event
                          bloc.add(AccountEvent.phoneVerified(
                              success: false,
                              failure: true,
                              error: 'failed: $e'));
                        });
                      },
                      child: Text('Done', textAlign: TextAlign.end),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColorDark),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)))));
                },
              ),
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

void startTimer({
  required BuildContext context,
  required AccountBloc bloc,
}) {
  var timer = Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      if (bloc.state.startTime == 0) {
        timer.cancel();
        bloc.add(AccountEvent.startTimeChanged(60, true));
      } else {
        final int time = bloc.state.startTime - 1;
        bloc.add(AccountEvent.startTimeChanged(time, false));
      }
    },
  );
  bloc.add(AccountEvent.timerChanged(timer));
}

Future<bool?> showLogoutDialog(BuildContext context) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Log out'),
          content: Text('Are you sure?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('no'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorDark,
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)))),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(
                'yes',
                style: TextStyle(color: Theme.of(context).primaryColorDark),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      });
}
