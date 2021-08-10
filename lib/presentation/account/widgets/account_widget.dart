import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/account/account_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/person_info/person_bloc.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/account/widgets/person_info.dart';
import 'package:nipange/utils/extensions.dart';

class AccountWidget extends StatelessWidget {
  final String api = "http://172.20.10.11:5000";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AccountBloc, AccountState>(
        listener: (context, state) {
          // signOut
          if (state.isSignout) {
            // navgate to explore route
            print('signing out');
            context.read<AuthBloc>()..add(AuthEvent.started());
          }
          // switch acc
          if (state.isSwitchSuccess) {
            state.futureUser.then((user) {
              if (user.type == 'customer') {
                // navgate to explore route
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed('/');
              }
              if (user.type == 'host') {
                // navgate to host route
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed('host');
              }
            });
          }
        },
        builder: (context, state) {
          return FutureBuilder<User>(
            future: state.futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children: [
                    // profile
                    Container(
                      height: 200,
                      child: Material(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                              ? Text(snapshot.data!.firstName
                                                          .isNotEmpty &&
                                                      snapshot.data!.lastName
                                                          .isNotEmpty
                                                  ? '${snapshot.data!.firstName[0].toUpperCase()}${snapshot.data!.lastName[0].toUpperCase()}'
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
                                    text: snapshot.data!.firstName,
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
                                    ? snapshot.data!.type.capitalize()
                                    : '',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // account settings
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 60, bottom: 8),
                      child: Text(
                        'ACCOUNT SETTINGS',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    //person info
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 8, bottom: 8),
                      child: GestureDetector(
                        child: Text('Personal information',
                            style: Theme.of(context).textTheme.bodyText1),
                        onTap: () {
                          //nav to personal info
                          Navigator.of(context, rootNavigator: true)
                              .push(MaterialPageRoute(builder: (context) {
                            return BlocProvider(
                              create: (context) => getIt<PersonBloc>()
                                ..add(PersonEvent.started(
                                  fname: snapshot.data!.firstName,
                                  lname: snapshot.data!.lastName,
                                  phone: snapshot.data!.phone,
                                  username: snapshot.data!.username,
                                  email: snapshot.data!.email,
                                  id: snapshot.data!.id,
                                )),
                              child: PersonInfo(),
                            );
                          })).then((value) => context
                                  .read<AccountBloc>()
                                  .add(AccountEvent.started()));
                        },
                      ),
                    ),
                    Divider(),
                    // acc type
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 12, bottom: 8),
                      child: Text(
                        'ACCOUNT TYPE',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    // switch
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 8, bottom: 8),
                      child: GestureDetector(
                        child: Text(
                          snapshot.data!.type == 'customer'
                              ? 'Switch to host'
                              : 'Switch to customer',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          context.read<AccountBloc>().add(
                              AccountEvent.accountSwitched(
                                  id: snapshot.data!.id,
                                  type: snapshot.data!.type));
                        },
                      ),
                    ),

                    // loading
                    if (state.isSwitchLoading)
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    Divider(),

                    // legal

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 12, bottom: 8),
                      child: Text(
                        'LEGAL',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    //privacy policy
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, top: 8, bottom: 8),
                      child: GestureDetector(
                        child: Text(
                          'Terms & Conditions',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          //nav to privacy terms
                        },
                      ),
                    ),
                    Divider(),
                    // log out
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 30, bottom: 8),
                        child: Text(
                          'Log out',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      onTap: () {
                        context.read<AccountBloc>().add(AccountEvent.signOut());
                      },
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  alignment: Alignment.center,
                  child: Text(snapshot.error.toString()),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
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
