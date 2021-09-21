import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/amenity/amenity_bloc.dart';
import 'package:nipange/application/photos/photos_bloc.dart';

import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/photos.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class AmenitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<AmenityBloc, AmenityState>(builder: (context, state) {
              return TextButton(
                onPressed: state.amenities.isNotEmpty &&
                        state.isedited &&
                        !state.isSubmitting
                    ? () {
                        context.read<AmenityBloc>().add(AmenityEvent.save());
                      }
                    : null,
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 18),
                ),
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
            }),
          ],
        ),
        body: BlocConsumer<AmenityBloc, AmenityState>(
          listener: (context, state) {
            if (state.isSuccess) {
              // add to listing bloc

              // nav to photos route
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => getIt<PhotosBloc>()
                      ..add(PhotosEvent.add(state.listing)),
                    child: Photospage(),
                  );
                }),
              );
            }

            // if user pressed save and ext
            if (state.saved) {
              // go to /host
              Navigator.of(context, rootNavigator: true)
                  .pushNamedAndRemoveUntil('host', (route) => false);
            }

            // errpr
            if (state.failureMessage.isNotEmpty) {
              // show snackbar
              final snackBar = SnackBar(
                content: Text(
                  state.failureMessage,
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Theme.of(context).primaryColorLight,
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                // title
                Container(
                  alignment: Alignment.topCenter,
                  padding:
                      EdgeInsets.only(left: 18, top: 30, bottom: 30, right: 18),
                  child: Text(
                    'What of the following are present at your place?',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),

                //progress indicator
                if (state.isSubmitting) KCircularProgressIndicator(),

                SizedBox(
                  height: 10,
                ),

                // amenities chekbox
                FutureBuilder<List<String>>(
                    future: state.amenitiesFuture,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final amenities = snapshot.data!;
                        return Column(
                          children: amenities.map((amenity) {
                            return CheckboxListTile(
                              title: Text(amenity.capitalize()),
                              value: state.amenities.contains(amenity),
                              onChanged: (value) {
                                value!
                                    ? context
                                        .read<AmenityBloc>()
                                        .add(AmenityEvent.amenityAdded(amenity))
                                    : context.read<AmenityBloc>().add(
                                        AmenityEvent.amenityDeleted(amenity));
                              },
                              activeColor: Theme.of(context).primaryColorDark,
                            );
                          }).toList(),
                        );
                      } else if (snapshot.hasError)
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      else // shadow
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            children: _buildShadow(),
                          ),
                        );
                    }),
              ],
            );
          },
        ),
        floatingActionButton:
            BlocBuilder<AmenityBloc, AmenityState>(builder: (context, state) {
          return ElevatedButton(
            onPressed: state.amenities.isNotEmpty && !state.isSubmitting
                ? () {
                    if (state.isedited)
                      context.read<AmenityBloc>().add(AmenityEvent.next());
                    else {
                      // nav to photos route
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BlocProvider(
                            create: (context) => getIt<PhotosBloc>()
                              ..add(PhotosEvent.add(state.listing)),
                            child: Photospage(),
                          );
                        }),
                      );
                    }
                  }
                : null,
            child: Text('Next'),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(80, 35)),
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
                elevation: MaterialStateProperty.all(0)),
          );
        }),
      ),
    );
  }
}

List<Widget> _buildShadow() {
  return List.generate(
      7,
      (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    color: Colors.grey[200],
                    width: 100,
                    height: 20,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.grey[200],
                    width: 20,
                    height: 23,
                  ),
                ),
              ],
            ),
          ));
}

Future<bool> _willPopCallback(BuildContext context) async {
  final bloc = context.read<AmenityBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required AmenityBloc bloc}) {
  // set up the button
  Widget cancelButton = TextButton(
    child: Text(
      "Cancel",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
    ),
    onPressed: () {
      Navigator.pop(context, false); // dismiss alert dialog
    },
  );

  Widget discardButton = TextButton(
    child: Text(
      "Discard",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
    ),
    onPressed: () {
      Navigator.pop(context, true); // dismiss alert dialog
    },
  );

  Widget saveButton = TextButton(
    child: Text("Save", style: TextStyle(color: Colors.white)),
    onPressed: () {
      Navigator.pop(context, false); // dismiss alert dialog
      // save event
      bloc..add(AmenityEvent.save());
    },
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      backgroundColor:
          MaterialStateProperty.all(Theme.of(context).primaryColorDark),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Save",
    ),
    content: Text(
      "you have unsaved changes",
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
  return showDialog<bool>(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
