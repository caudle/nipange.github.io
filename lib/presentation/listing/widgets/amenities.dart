import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/amenity/amenity_bloc.dart';
import 'package:nipange/application/photos/photos_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/photos.dart';

class AmenitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AmenityBloc, AmenityState>(
        listener: (context, state) {
          if (state.isSuccess) {
            // add to listing bloc

            // nav to photos route
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return BlocProvider(
                  create: (context) =>
                      getIt<PhotosBloc>()..add(PhotosEvent.add(state.listing)),
                  child: Photospage(),
                );
              }),
            );
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
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 10),
                    child: TextButton(
                        onPressed: state.parking ||
                                state.electricFence ||
                                state.elevator ||
                                state.fence ||
                                state.ac
                            ? () {
                                context
                                    .read<AmenityBloc>()
                                    .add(AmenityEvent.save());
                              }
                            : null,
                        child: Text('Save and exit')),
                  )
                ],
              ),

              // title
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                child: Text(
                  'What of the following are present at your place?',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // parking
              CheckboxListTile(
                title: Text('Car parking'),
                value: state.parking,
                onChanged: (parking) {
                  context
                      .read<AmenityBloc>()
                      .add(AmenityEvent.parkingChanged(parking!));
                },
              ),

              // elevator
              CheckboxListTile(
                title: Text('Elevator'),
                value: state.elevator,
                onChanged: (elevator) {
                  context
                      .read<AmenityBloc>()
                      .add(AmenityEvent.elevatorChanged(elevator!));
                },
              ),

              // electric fence
              CheckboxListTile(
                title: Text('Electric Fence'),
                value: state.electricFence,
                onChanged: (electricFence) {
                  context
                      .read<AmenityBloc>()
                      .add(AmenityEvent.electricFenceChanged(electricFence!));
                },
              ),

              // febce
              CheckboxListTile(
                title: Text('Fence'),
                value: state.fence,
                onChanged: (fence) {
                  context
                      .read<AmenityBloc>()
                      .add(AmenityEvent.fenceChanged(fence!));
                },
              ),

              // ac
              CheckboxListTile(
                title: Text('Air Conditioner'),
                value: state.ac,
                onChanged: (ac) {
                  context.read<AmenityBloc>().add(AmenityEvent.acChanged(ac!));
                },
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
          BlocBuilder<AmenityBloc, AmenityState>(builder: (context, state) {
        return ElevatedButton(
          onPressed: state.parking ||
                  state.electricFence ||
                  state.elevator ||
                  state.fence ||
                  state.ac
              ? () {
                  context.read<AmenityBloc>().add(AmenityEvent.next());
                }
              : null,
          child: Text('Next'),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 45)),
              backgroundColor: MaterialStateProperty.all(Color(0xFFFC5185)),
              elevation: MaterialStateProperty.all(0)),
        );
      }),
    );
  }
}
