import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/person_info/person_bloc.dart';
import 'package:nipange/core/theme.dart';

class PersonInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {
        return ListView(
          children: [
            //close icon && save
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.black38,
                      ),
                      onPressed: () {
                        if (state.saved) {
                          Navigator.pop(context);
                        } else {
                          showAlertDialog(context, state);
                        }
                      }),
                ),

                // sav and ext
                Container(
                  margin: EdgeInsets.only(top: 20, right: 10),
                  child: TextButton(
                      onPressed: state.saved
                          ? null
                          : () {
                              context
                                  .read<PersonBloc>()
                                  .add(PersonEvent.edit(state.id));
                            },
                      child: Text('Save')),
                )
              ],
            ),

            // title
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Person Information',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),

            // fname field
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 20, right: 10, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: state.fnameController,
                  decoration: InputDecoration(
                    labelText: 'First name',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                  ),
                  onChanged: (fname) => context
                      .read<PersonBloc>()
                      .add(PersonEvent.fnameChanged(fname)),
                  validator: (fname) {
                    if (fname!.isNotEmpty)
                      return null;
                    else
                      return "field can\'t be empty";
                  },
                ),
              ),
            ),

            // lname field
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 20, right: 10, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: state.lnameController,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                  ),
                  onChanged: (lname) => context
                      .read<PersonBloc>()
                      .add(PersonEvent.lnameChanged(lname)),
                  validator: (lname) {
                    if (lname!.isNotEmpty)
                      return null;
                    else
                      return "field can\'t be empty";
                  },
                ),
              ),
            ),

            // username field
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 20, right: 10, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: state.usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
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
                  left: 18.0, top: 20, right: 10, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: state.emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                  ),
                  onChanged: (email) => context
                      .read<PersonBloc>()
                      .add(PersonEvent.emailChanged(email)),
                  validator: (email) {
                    if (email!.isNotEmpty)
                      return null;
                    else
                      return "field can\'t be empty";
                  },
                ),
              ),
            ),

            // phone field
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 20, right: 10, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: state.phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                  ),
                  onChanged: (phone) => context
                      .read<PersonBloc>()
                      .add(PersonEvent.phoneChanged(phone)),
                  validator: (phone) {
                    if (phone!.isNotEmpty)
                      return null;
                    else
                      return "field can\'t be empty";
                  },
                ),
              ),
            ),

            if (state.isSubmit)
              Container(
                padding: const EdgeInsets.only(top: 8.0),
                child: LinearProgressIndicator(),
              ),

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
    );
  }

  // show dialod
  showAlertDialog(BuildContext context, PersonState state) {
    // set up the button
    Widget cancelButton = TextButton(
      child: Text("cancel"),
      onPressed: () {
        Navigator.pop(context); // dismiss alert dialog
      },
    );

    Widget saveButton = TextButton(
      child: Text("save"),
      onPressed: () {
        Navigator.pop(context); // dismiss alert dialog
        context.read<PersonBloc>().add(PersonEvent.edit(state.id));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Save changes"),
      content: Text("If you cancel your changes won\'t be saved"),
      actions: [
        cancelButton,
        saveButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
