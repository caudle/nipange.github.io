import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/amenity/amenity_bloc.dart';
import 'package:nipange/application/location/location_bloc.dart';
import 'package:nipange/domain/location/location.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/amenities.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              BlocBuilder<LocationBloc, LocationState>(
                  builder: (context, state) {
                return TextButton(
                  onPressed: state.isedited &&
                          state.country != null &&
                          state.region != null &&
                          state.district != null &&
                          state.ward != null &&
                          state.street != null &&
                          !state.isSubmitting
                      ? () {
                          context
                              .read<LocationBloc>()
                              .add(LocationEvent.save());
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
          body: BlocConsumer<LocationBloc, LocationState>(
            listener: (context, state) {
              if (state.isSuccess) {
                // navdt to amenities route
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => getIt<AmenityBloc>()
                      ..add(AmenityEvent.add(state.listing)),
                    child: AmenitiesPage(),
                  );
                }));
              }

              // if user pressed save and ext
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
                  // title
                  Container(
                    padding: EdgeInsets.only(
                        left: 18, top: 30, bottom: 30, right: 18),
                    child: Text(
                      'Where is your place located?',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //progress indicator
                  if (state.isSubmitting) KCircularProgressIndicator(),
                  // country
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 15, right: 18, bottom: 10),
                    child: FutureBuilder<List<Location>>(
                      future: state.countriesFuture,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final countries = snapshot.data!;
                          return DropdownButtonFormField<String>(
                            items: countries.map((country) {
                              return DropdownMenuItem(
                                child: Text(country.name.capitalize()),
                                value: country.name,
                                onTap: () {
                                  context.read<LocationBloc>()
                                    ..add(LocationEvent.regionsAdded(
                                        country.kids));
                                },
                              );
                            }).toList(),
                            value: state.country,
                            onChanged: (country) {
                              context.read<LocationBloc>()
                                ..add(LocationEvent.countryChanged(country));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              labelText: 'country',
                            ),
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                          );
                        } else if (snapshot.hasError)
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        else // shadow
                          return Container(
                            color: Colors.grey[200],
                            width: 2,
                            height: 60,
                          );
                      },
                    ),
                  ),

                  // region field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: DropdownButtonFormField<String>(
                      items: state.regions?.map((region) {
                        return DropdownMenuItem(
                          child: Text(region.name.capitalize()),
                          value: region.name,
                          onTap: () => context.read<LocationBloc>()
                            ..add(LocationEvent.districtsFetched(region.id)),
                        );
                      }).toList(),
                      value: state.region,
                      onChanged: (value) => context.read<LocationBloc>()
                        ..add(LocationEvent.regionChanged(value)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        labelText: 'region',
                      ),
                      hint: Text(state.region ?? ''),
                      iconEnabledColor: Theme.of(context).iconTheme.color,
                    ),
                  ),

                  // district field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: FutureBuilder<List<Location>>(
                      future: state.districtsFuture,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final districts = snapshot.data!;
                          return DropdownButtonFormField<String>(
                            items: districts.map((district) {
                              return DropdownMenuItem(
                                child: Text(district.name.capitalize()),
                                value: district.name,
                                onTap: () => context.read<LocationBloc>()
                                  ..add(
                                      LocationEvent.wardsAdded(district.kids)),
                              );
                            }).toList(),
                            value: state.district,
                            onChanged: (district) {
                              context.read<LocationBloc>()
                                ..add(LocationEvent.districtChanged(district));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              labelText: 'district',
                            ),
                            hint: Text(state.district ?? ''),
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                          );
                        } else if (snapshot.hasError)
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        else // shadow
                          return Container(
                            height: 50,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                            state.district ?? 'district',
                                            style: TextStyle(
                                                color: Colors.grey[700])),
                                      )),
                                  Spacer(flex: 5),
                                  Expanded(
                                      child: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.grey[400],
                                  )),
                                ]),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(8)),
                          );
                      },
                    ),
                  ),

                  // ward field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: DropdownButtonFormField<String>(
                      items: state.wards?.map((ward) {
                        return DropdownMenuItem(
                          child: Text(ward.name.capitalize()),
                          value: ward.name,
                          onTap: () {
                            context.read<LocationBloc>()
                              ..add(LocationEvent.streetsFetched(ward.id));
                          },
                        );
                      }).toList(),
                      value: state.ward,
                      onChanged: (value) {
                        context.read<LocationBloc>()
                          ..add(LocationEvent.wardChanged(value));
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        labelText: 'ward',
                      ),
                      hint: Text(state.ward ?? ''),
                      iconEnabledColor: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  // street field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: FutureBuilder<List<Location>>(
                      future: state.streetsFuture,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final streets = snapshot.data;
                          return DropdownButtonFormField<String>(
                            key: UniqueKey(),
                            items: streets?.map((street) {
                              return DropdownMenuItem(
                                key: UniqueKey(),
                                child: Text(street.name.capitalize()),
                                value: street.name,
                              );
                            }).toList(),
                            value: state.street,
                            onChanged: (value) {
                              context.read<LocationBloc>()
                                ..add(LocationEvent.streetChanged(value));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              labelText: 'street',
                            ),
                            hint: Text(state.street ?? ''),
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                          );
                        } else if (snapshot.hasError)
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        else // shadow
                          return Container(
                            height: 50,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(state.street ?? 'street',
                                            style: TextStyle(
                                                color: Colors.grey[700])),
                                      )),
                                  Expanded(
                                      child: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.grey[400],
                                  )),
                                ]),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(8)),
                          );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          floatingActionButton: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
            return ElevatedButton(
              onPressed: state.country != null &&
                      state.region != null &&
                      state.district != null &&
                      state.ward != null &&
                      state.street != null &&
                      !state.isSubmitting
                  ? () {
                      if (state.isedited)
                        context.read<LocationBloc>().add(LocationEvent.next());
                      else {
                        // navdt to amenities route
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BlocProvider(
                            create: (context) => getIt<AmenityBloc>()
                              ..add(AmenityEvent.add(state.listing)),
                            child: AmenitiesPage(),
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
  final bloc = context.read<LocationBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required LocationBloc bloc}) {
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
      bloc..add(LocationEvent.save());
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
