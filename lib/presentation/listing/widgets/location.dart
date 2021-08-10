import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/amenity/amenity_bloc.dart';
import 'package:nipange/application/location/location_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/amenities.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state.isSuccess) {
              // add loc to listing bloc

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
                  .pushReplacementNamed('host');
            }
          },
          builder: (context, state) {
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
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),

                    // sav and ext
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 10),
                      child: TextButton(
                          onPressed: state.countryController.value.text
                                      .isNotEmpty &&
                                  state
                                      .regionController.value.text.isNotEmpty &&
                                  state.districtController.value.text
                                      .isNotEmpty &&
                                  state.streetController.value.text.isNotEmpty
                              ? () {
                                  context
                                      .read<LocationBloc>()
                                      .add(LocationEvent.save());
                                }
                              : null,
                          child: Text('Save and exit')),
                    )
                  ],
                ),

                // title
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Where is your place located?',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),

                // country field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.countryController,
                      decoration: InputDecoration(
                        labelText: 'Country',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (country) => context
                          .read<LocationBloc>()
                          .add(LocationEvent.countryChanged(country)),
                      validator: (country) {
                        if (country!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // region field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.regionController,
                      decoration: InputDecoration(
                        labelText: 'Region',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (region) => context
                          .read<LocationBloc>()
                          .add(LocationEvent.regionChanged(region)),
                      validator: (region) {
                        if (region!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // district field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.districtController,
                      decoration: InputDecoration(
                        labelText: 'District',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (district) => context
                          .read<LocationBloc>()
                          .add(LocationEvent.districtChanged(district)),
                      validator: (district) {
                        if (district!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // street field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.streetController,
                      decoration: InputDecoration(
                        labelText: 'street',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (street) => context
                          .read<LocationBloc>()
                          .add(LocationEvent.streetChanged(street)),
                      validator: (street) {
                        if (street!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                //progress indicator
                if (state.isSubmitting)
                  Container(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: LinearProgressIndicator(),
                  ),

                //error
                if (state.failureMessage.isNotEmpty)
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      state.failureMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            );
          },
        ),
        floatingActionButton:
            BlocBuilder<LocationBloc, LocationState>(builder: (context, state) {
          return ElevatedButton(
            onPressed: state.countryController.value.text.isNotEmpty &&
                    state.regionController.value.text.isNotEmpty &&
                    state.districtController.value.text.isNotEmpty &&
                    state.streetController.value.text.isNotEmpty
                ? () {
                    context.read<LocationBloc>().add(LocationEvent.next());
                  }
                : null,
            child: Text('Next'),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(100, 45)),
                backgroundColor: MaterialStateProperty.all(Color(0xFFFC5185)),
                elevation: MaterialStateProperty.all(0)),
          );
        }));
  }
}
