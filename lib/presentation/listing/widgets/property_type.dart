import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/location/location_bloc.dart';
import 'package:nipange/application/property/property_bloc.dart';
import 'package:nipange/domain/category/category.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/location.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class PropertyTypePage extends StatelessWidget {
  final List<String> types = <String>['Apartment', 'House'];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              BlocBuilder<PropertyBloc, PropertyState>(
                builder: (context, state) {
                  return TextButton(
                    onPressed: state.isedited &&
                            state.nameController.value.text.isNotEmpty &&
                            state.categoryValue.isNotEmpty &&
                            !state.isSubmitting
                        ? () {
                            context
                                .read<PropertyBloc>()
                                .add(PropertyEvent.save());
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
                },
              ),
            ],
            elevation: 0,
          ),
          body: BlocConsumer<PropertyBloc, PropertyState>(
            listener: (context, state) {
              if (state.isSuccess) {
                //navgt to next route
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // create listing
                  Listing listing = state.listing;
                  listing.id = state.listingId;
                  print('listing id from type: ${listing.id}');
                  return BlocProvider(
                    lazy: false,
                    create: (context) =>
                        getIt<LocationBloc>()..add(LocationEvent.add(listing)),
                    child: LocationPage(),
                  );
                }));
              }
              // if user pressed save and exit
              if (state.saved) {
                // go to /host
                Navigator.of(context, rootNavigator: true)
                    .pushNamedAndRemoveUntil('host', (route) => false);
              }

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
                  Container(
                    padding: EdgeInsets.only(
                        left: 18, top: 30, bottom: 30, right: 18),
                    child: Text(
                      'Which of these sound most like your place?',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //progress indicator
                  if (state.isSubmitting) KCircularProgressIndicator(),

                  //choose prop type
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 20, bottom: 8),
                    child: Text(
                      'Choose a property type',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),

                  //type drop down
                  FutureBuilder<List<Category>>(
                      future: state.categories,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final categories = snapshot.data!;
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 18.0, top: 10, right: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                DropdownButtonFormField<String>(
                                  value: state.categoryValue,
                                  items: categories.map((Category category) {
                                    return DropdownMenuItem<String>(
                                      value: category.name,
                                      child: new Text(
                                        category.name,
                                      ),
                                      onTap: () {
                                        context.read<PropertyBloc>().add(
                                            PropertyEvent.descChanged(
                                                category.description));
                                      },
                                    );
                                  }).toList(),
                                  onChanged: (value) => context
                                      .read<PropertyBloc>()
                                      .add(PropertyEvent.categoryChanged(
                                          value!)),
                                  iconEnabledColor:
                                      Theme.of(context).iconTheme.color,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 8,
                                    ),
                                  ),
                                ),

                                // desc
                                if (state.desc.isNotEmpty)
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      state.desc,
                                    ),
                                  )
                              ],
                            ),
                          );
                        } else if (snapshot.hasError)
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        else
                          // shadow
                          return Container(
                            margin: const EdgeInsets.only(
                                left: 18.0, top: 10, right: 18),
                            height: 30,
                            color: Colors.grey[200],
                          );
                      }),

                  // apt
                  if (state.categoryValue == "apartment")
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 15, right: 18, bottom: 10),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: state.buildingController,
                          decoration: InputDecoration(
                            labelText: 'building name',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                          ),
                          cursorColor: Theme.of(context).primaryColorDark,
                          onChanged: (building) => context
                              .read<PropertyBloc>()
                              .add(PropertyEvent.buildingChanged(building)),
                          validator: (building) {
                            if (building!.isNotEmpty)
                              return null;
                            else
                              return "field can\'t be empty";
                          },
                        ),
                      ),
                    ),

                  // name
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 8, right: 18, bottom: 10),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        controller: state.nameController,
                        decoration: InputDecoration(
                          labelText: 'name',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8,
                          ),
                        ),
                        cursorColor: Theme.of(context).primaryColorDark,
                        onChanged: (name) => context
                            .read<PropertyBloc>()
                            .add(PropertyEvent.nameChanged(name)),
                        validator: (name) {
                          if (name!.isNotEmpty)
                            return null;
                          else
                            return "field can\'t be empty";
                        },
                      ),
                    ),
                  ),

                  // size
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 10, right: 18, bottom: 10),
                    child: TextFormField(
                      controller: state.sizeController,
                      decoration: InputDecoration(
                        labelText: 'size in (square feet)   (optional)',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8,
                        ),
                      ),
                      cursorColor: Theme.of(context).primaryColorDark,
                      onChanged: (size) => context
                          .read<PropertyBloc>()
                          .add(PropertyEvent.sizeChanged(size)),
                    ),
                  ),

                  SizedBox(height: 20),
                  // bedrooms
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text(
                              'Bedrooms',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              color: Theme.of(context).primaryColorDark,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              ),
                              onPressed: () => context
                                  .read<PropertyBloc>()
                                  .add(PropertyEvent.bedroomAdd()),
                              elevation: 0,
                            ),
                          ),
                        ),
                        Text(
                          state.bedroom.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              color: Theme.of(context).primaryColorDark,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              ),
                              onPressed: () => context
                                  .read<PropertyBloc>()
                                  .add(PropertyEvent.bedroomMinus()),
                              elevation: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // bathrooms
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18.0,
                        right: 18,
                        top: 5,
                        bottom: state.isSubmitting ||
                                state.failureMessage.isNotEmpty
                            ? 5
                            : 150),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text(
                              'Bathrooms',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: MaterialButton(
                              color: Theme.of(context).primaryColorDark,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              ),
                              onPressed: () => context
                                  .read<PropertyBloc>()
                                  .add(PropertyEvent.bathroomAdd()),
                              elevation: 0,
                            ),
                          ),
                        ),
                        Text(
                          state.bathroom.toString(),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: MaterialButton(
                              color: Theme.of(context).primaryColorDark,
                              shape: CircleBorder(),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              ),
                              onPressed: () => context
                                  .read<PropertyBloc>()
                                  .add(PropertyEvent.bathroomMinus()),
                              elevation: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          floatingActionButton: BlocBuilder<PropertyBloc, PropertyState>(
              builder: (context, state) {
            return ElevatedButton(
              onPressed: state.nameController.value.text.isNotEmpty &&
                      state.categoryValue.isNotEmpty &&
                      !state.isSubmitting
                  ? () {
                      if (state.isedited)
                        context.read<PropertyBloc>().add(PropertyEvent.next());
                      else {
                        //navgt to next route
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BlocProvider(
                            lazy: false,
                            create: (context) => getIt<LocationBloc>()
                              ..add(LocationEvent.add(state.listing)),
                            child: LocationPage(),
                          );
                        }));
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
          })),
    );
  }
}

Future<bool> _willPopCallback(BuildContext context) async {
  final bloc = context.read<PropertyBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required PropertyBloc bloc}) {
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
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all(Colors.black),
    ),
  );

  Widget saveButton = TextButton(
    child: Text("Save", style: TextStyle(color: Colors.white)),
    onPressed: () {
      Navigator.pop(context, false); // dismiss alert dialog
      // save event
      bloc..add(PropertyEvent.save());
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
