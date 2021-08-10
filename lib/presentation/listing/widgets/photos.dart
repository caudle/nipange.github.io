import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/photos/photos_bloc.dart';
import 'package:nipange/application/videos/videos_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/videos.dart';

class Photospage extends StatelessWidget {
  final String api = "http://172.20.10.11:5000";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PhotosBloc, PhotosState>(
        listener: (context, state) {
          if (state.isSuccess) {
            // add photos to listing bloc

            // navdt to videos route
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BlocProvider(
                create: (context) =>
                    getIt<VideosBloc>()..add(VideosEvent.add(state.listing)),
                child: VideosPage(),
              );
            }));
          }
          if (state.saved) {
            // go to /host
            Navigator.of(context, rootNavigator: true)
                .pushReplacementNamed('host');
          }
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
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
                              onPressed: state.image0 != null ||
                                      state.image1 != null ||
                                      state.image2 != null ||
                                      state.image3 != null ||
                                      state.image4 != null ||
                                      state.image5 != null ||
                                      state.images!.isNotEmpty
                                  ? () {
                                      context
                                          .read<PhotosBloc>()
                                          .add(PhotosEvent.save());
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
                        'Photos of your place',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ),

              // grid of imgs
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    // create an array of state img files
                    List<File?> imageFiles = [
                      state.image0,
                      state.image1,
                      state.image2,
                      state.image3,
                      state.image4,
                      state.image5
                    ];
                    return Material(
                      child: InkWell(
                        child: Container(
                          child: imageFiles[index] != null
                              ? Image.file(imageFiles[index]!)
                              : state.images!.length > index
                                  ? Image.network(
                                      '$api/${state.images![index]}')
                                  : Icon(
                                      Icons.add_photo_alternate,
                                      size: 40,
                                    ),
                        ),
                        onTap: () {
                          getImage(state, index, context);
                        },
                      ),
                    );
                  },
                  childCount: 6,
                ),
              ),

              //progress indicator
              if (state.isSubmitting)
                SliverToBoxAdapter(
                  child: Container(
                    height: 10,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: LinearProgressIndicator(),
                  ),
                ),

              //error
              if (state.failureMessage.isNotEmpty)
                SliverToBoxAdapter(
                  child: Container(
                    height: 10,
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      state.failureMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton:
          BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
        return ElevatedButton(
          onPressed: state.image0 != null ||
                  state.image1 != null ||
                  state.image2 != null ||
                  state.image3 != null ||
                  state.image4 != null ||
                  state.image5 != null ||
                  state.images!.isNotEmpty
              ? () {
                  context.read<PhotosBloc>().add(PhotosEvent.next());
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

  Future getImage(PhotosState state, int index, BuildContext context) async {
    // get image
    final picker = ImagePicker();
    // check what index is prssd
    switch (index) {
      case 0:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image0changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      case 1:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image1changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      case 2:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image2changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      case 3:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image3changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      case 4:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image4changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      case 5:
        {
          final pickedFile = await picker.getImage(source: ImageSource.gallery);
          if (pickedFile != null)
            context
                .read<PhotosBloc>()
                .add(PhotosEvent.image5changed(File(pickedFile.path)));
          else
            print('failed to get image at index: $index');
        }
        break;
      default:
        print('no index found');
    }
  }
}
