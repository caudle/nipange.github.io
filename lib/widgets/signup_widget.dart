import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/utils/extensions.dart';

class SignUpWidget extends StatelessWidget {
  final String gotoRoute;
  final String title;
  final String caption;
  final IconData icon;
  SignUpWidget({
    Key? key,
    required this.gotoRoute,
    required this.title,
    required this.caption,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                title.capitalize(),
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 28),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // icon
                Icon(
                  icon,
                  color: Colors.black54,
                  size: 80,
                ),

                // caption
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(caption.capitalize()),
                ),

                // sign up btn
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('signup', arguments: gotoRoute)
                        .then((_) {
                      // fetch new user
                      context.read<AuthBloc>().add(AuthEvent.started());
                    });
                  },
                  child: Text('Sign up'),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(230, 40)),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColorLight),
                      elevation: MaterialStateProperty.all(6),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
