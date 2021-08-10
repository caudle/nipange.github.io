import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/location/location_bloc.dart';
import 'package:nipange/application/property/property_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/location.dart';

class PropertyTypePage extends StatelessWidget {
  final List<String> types = <String>['Apartment', 'House'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PropertyBloc, PropertyState>(
          listener: (context, state) {
            if (state.isSuccess) {
              //navgt to next route
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                state.listing.id = state.listingId;
                print('listing from type: ${state.listing}');
                return BlocProvider(
                  create: (context) => getIt<LocationBloc>()
                    ..add(LocationEvent.add(state.listing)),
                  child: LocationPage(),
                );
              }));
            }
            // if user pressed save and exit
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
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 10),
                      child: TextButton(
                          onPressed: state
                                      .nameController.value.text.isNotEmpty &&
                                  state.type!.isNotEmpty
                              ? () {
                                  context
                                      .read<PropertyBloc>()
                                      .add(PropertyEvent.save(state.listingId));
                                }
                              : null,
                          child: Text('Save and exit')),
                    )
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(left: 18, top: 40, bottom: 30),
                  child: Text(
                    'Which of these sounds most like your place?',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),

                //choose prop type
                Container(
                  margin: EdgeInsets.only(left: 18, top: 20),
                  child: Text(
                    'Choose a property type',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 16),
                  ),
                ),

                //type drop down
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: DropdownButton<String>(
                    value: state.type,
                    items: types.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(
                          value,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      );
                    }).toList(),
                    onChanged: (type) => context
                        .read<PropertyBloc>()
                        .add(PropertyEvent.typeChanged(type!)),
                  ),
                ),

                // house
                if (state.type == "House")
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    child: Text(
                        """Often stand alone structures but some houses such as semi detached properties, may share walls or outdoor areas with other houses"""),
                  ),

                // apt
                if (state.type == "Apartment")
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        child: Text(
                            "Typically located in multi-unit residential buildings or complexes where other people live"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 10, bottom: 10),
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFormField(
                            controller: state.buildingController,
                            decoration: InputDecoration(
                              labelText: 'building name',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 14),
                              errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                            ),
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
                      )
                    ],
                  ),

                // name
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 10, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.nameController,
                      decoration: InputDecoration(
                        labelText: 'name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (name) => context
                          .read<PropertyBloc>()
                          .add(PropertyEvent.nameChanged(name)),
                    ),
                  ),
                ),

                // size
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 10, right: 10, bottom: 10),
                  child: TextFormField(
                    controller: state.sizeController,
                    decoration: InputDecoration(
                      labelText: 'size in (square metres)   (optional)',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                    onChanged: (size) => context
                        .read<PropertyBloc>()
                        .add(PropertyEvent.sizeChanged(size)),
                  ),
                ),

                SizedBox(height: 20),
                // bedrooms
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment .spaceAround,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Bedrooms',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 16),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: MaterialButton(
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () => context
                                .read<PropertyBloc>()
                                .add(PropertyEvent.bedroomAdd()),
                            elevation: 0,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Text(
                          state.bedroom.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: MaterialButton(
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
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
                      bottom:
                          state.isSubmitting || state.failureMessage.isNotEmpty
                              ? 5
                              : 150),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Bathrooms',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 16),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: MaterialButton(
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () => context
                                .read<PropertyBloc>()
                                .add(PropertyEvent.bathroomAdd()),
                            elevation: 0,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Text(
                          state.bathroom.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: MaterialButton(
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
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

                // next btn
              ],
            );
          },
        ),
        floatingActionButton:
            BlocBuilder<PropertyBloc, PropertyState>(builder: (context, state) {
          return ElevatedButton(
            onPressed: state.nameController.value.text.isNotEmpty &&
                    state.type!.isNotEmpty
                ? () {
                    context
                        .read<PropertyBloc>()
                        .add(PropertyEvent.next(state.listingId));
                  }
                : null,
            child: Text('Next'),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(80, 50)),
                backgroundColor: MaterialStateProperty.all(Color(0xFFFC5185)),
                elevation: MaterialStateProperty.all(0)),
          );
        }));
  }
}
