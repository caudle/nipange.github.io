import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/person_info/person_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class PersonInfo extends StatelessWidget {
  final String regEx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<PersonBloc, PersonState>(
              builder: (context, state) {
                return TextButton(
                  onPressed: state.saved
                      ? null
                      : () {
                          context
                              .read<PersonBloc>()
                              .add(PersonEvent.edit(state.id));
                        },
                  child: Text('save'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.black38;
                        }
                        return Colors.white;
                      }),
                      elevation: MaterialStateProperty.all(0)),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {
          return ListView(
            children: [
              // title
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Person Information',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 20, right: 18),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: state.usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    ),
                    onChanged: (name) => context
                        .read<PersonBloc>()
                        .add(PersonEvent.usernameChanged(name)),
                    validator: (name) {
                      if (name!.isNotEmpty)
                        return null;
                      else
                        return "field can\'t be empty";
                    },
                  ),
                ),
              ),

              // email field
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, top: 20, right: 18, bottom: 20),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: state.emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    ),
                    onChanged: (email) => context
                        .read<PersonBloc>()
                        .add(PersonEvent.emailChanged(email)),
                    validator: (email) {
                      if (RegExp(regEx).hasMatch(email!))
                        return null;
                      else
                        return "enter valid email";
                    },
                  ),
                ),
              ),

              // phone field
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: state.phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    ),
                    onChanged: (phone) => context
                        .read<PersonBloc>()
                        .add(PersonEvent.phoneChanged(phone)),
                    validator: (phone) {
                      if (phone!.startsWith('0') && phone.length == 10)
                        return null;
                      else
                        return "enter a valid phone number";
                    },
                  ),
                ),
              ),

              if (state.isSubmit) KCircularProgressIndicator(),

              //error
              if (state.failure.isNotEmpty)
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    state.failure,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    final bloc = context.read<PersonBloc>();
    if (bloc.state.saved)
      return true;
    else {
      // show dialog
      return showAlertDialog(context, bloc.state).then((value) => value!);
    }
  }

  // show dialod
  Future<bool?> showAlertDialog(BuildContext context, PersonState state) {
    // set up the button
    Widget cancelButton = TextButton(
      child: Text("Cancel",
          style: TextStyle(
            color: AppColor.kprimaryDarkColor,
          )),
      onPressed: () {
        Navigator.pop(context, false); // dismiss alert dialog
      },
    );

    Widget discardButton = TextButton(
      child: Text("Discard",
          style: TextStyle(
            color: AppColor.kprimaryDarkColor,
          )),
      onPressed: () {
        // add discard event
        context.read<PersonBloc>().add(PersonEvent.discard());
        // returns true so as to pop the info page
        Navigator.pop(context, true); // dismiss alert dialog
      },
    );

    Widget saveButton = TextButton(
      child: Text("Save"),
      onPressed: () {
        // save event
        context.read<PersonBloc>().add(PersonEvent.edit(state.id));
        Navigator.pop(context, false); // dismiss alert dialog
      },
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColorDark),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Save changes",
      ),
      content: Text(
        "If you cancel or discard your changes won\'t be saved.",
        textAlign: TextAlign.left,
      ),
      actions: [
        cancelButton,
        discardButton,
        saveButton,
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    // show the dialog
    return showDialog<bool?>(
      barrierDismissible: false,
      useRootNavigator: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
