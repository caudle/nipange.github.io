import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/login_details/login_details_bloc.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class LoginDetailsPage extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String phone;
  final String email;
  final String route;
  LoginDetailsPage({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.phone,
    required this.email,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<LoginDetailsBloc, LoginDetailsState>(
            listener: (context, state) {
              if (state.isSuccess) {
                Navigator.of(context, rootNavigator: true)
                    .popUntil(ModalRoute.withName(route));
              }
            },
            builder: (contet, state) {
              return Column(
                children: [
                  //title
                  Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Let's finish setting up your account",
                        style: Theme.of(context).textTheme.headline6,
                      )),
                  SizedBox(
                    height: 70,
                  ),
                  //form
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),

                          //username field
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Username",
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
                              context.read<LoginDetailsBloc>().add(
                                  LoginDetailsEvent.usernameChanged(value));
                            },
                            validator: (username) {
                              if (username!.length > 2)
                                return null;
                              else
                                return 'name too short';
                            },
                          ),
                          SizedBox(height: 20),

                          //password field
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "password",
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
                              context.read<LoginDetailsBloc>().add(
                                  LoginDetailsEvent.passwordChanged(value));
                            },
                            validator: (password) {
                              if (password!.length > 5)
                                return null;
                              else
                                return 'Password must contain atleast 6 characters with numbers';
                            },
                          ),
                          SizedBox(height: 20),

                          //confirm password field
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Confirm password",
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
                              context.read<LoginDetailsBloc>().add(
                                  LoginDetailsEvent.confirmPasswordChanged(
                                      value));
                            },
                            validator: (confirmPassword) {
                              if (confirmPassword == state.password)
                                return null;
                              else
                                return 'Password do not match';
                            },
                          ),
                          SizedBox(height: 40),

                          //sign up btn
                          ElevatedButton(
                            onPressed: state.username.length > 2 &&
                                    state.password.length > 5 &&
                                    state.confirmPassword == state.password
                                ? () {
                                    context.read<LoginDetailsBloc>().add(
                                        LoginDetailsEvent
                                            .finishWithEmailAndPasswordPressed(
                                                firstname: firstname,
                                                lastname: lastname,
                                                phone: phone,
                                                email: email));
                                  }
                                : null,
                            child: Text('Finish'),
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
                        ],
                      ),
                    ),
                  ),

                  //progress indicator
                  if (state.isSubmitting) KCircularProgressIndicator(),

                  //error
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      state.failuremessage,
                      style: TextStyle(color: Colors.red),
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
