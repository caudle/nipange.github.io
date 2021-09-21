import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/photos/photos_bloc.dart';
import 'package:nipange/application/videos/videos_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/videos.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class Photospage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
              return TextButton(
                onPressed: (state.image0 != null ||
                            state.image1 != null ||
                            state.image2 != null ||
                            state.image3 != null ||
                            state.image4 != null ||
                            state.image5 != null ||
                            state.images.isNotEmpty) &&
                        state.isedited &&
                        !state.isSubmitting
                    ? () {
                        context.read<PhotosBloc>().add(PhotosEvent.save());
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
        body: BlocConsumer<PhotosBloc, PhotosState>(
          listener: (context, state) {
            if (state.isSuccess) {
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
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                        left: 18, top: 30, bottom: 30, right: 18),
                    child: Text(
                      'Take good photos of your place',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                //progress indicator
                if (state.isSubmitting)
                  SliverToBoxAdapter(child: KCircularProgressIndicator()),

                // grid of imgs
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.1,
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
                          child: Container(
                            child: imageFiles[index] != null
                                ? Stack(
                                    children: [
                                      Image.file(
                                        imageFiles[index]!,
                                        fit: BoxFit.fill,
                                        width: double.infinity,
                                        height: double.infinity,
                                      ),
                                      Positioned(
                                          right: 5,
                                          top: 0,
                                          child: GestureDetector(
                                            child: Icon(
                                              Icons.remove_circle,
                                              color: Colors.red,
                                            ),
                                            onTap: () {
                                              context.read<PhotosBloc>()
                                                ..add(PhotosEvent.imageDeleted(
                                                    index));
                                            },
                                          ))
                                    ],
                                  )
                                : state.images.length > index
                                    ? Stack(
                                        children: [
                                          Image.network(
                                            '$api/${state.images[index]}',
                                            fit: BoxFit.fill,
                                            width: double.infinity,
                                            height: double.infinity,
                                          ),
                                          Positioned(
                                              right: 5,
                                              top: 0,
                                              child: GestureDetector(
                                                child: Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.red,
                                                ),
                                                onTap: () {
                                                  context.read<PhotosBloc>()
                                                    ..add(PhotosEvent
                                                        .imagesChanged(index));
                                                },
                                              ))
                                        ],
                                      )
                                    : IconButton(
                                        onPressed: () {
                                          showPickImageDialog(
                                              state, index, context);
                                        },
                                        icon: Icon(
                                          Icons.add_photo_alternate,
                                          size: 50,
                                        ),
                                      ),
                          ),
                          elevation: 2,
                        );
                      },
                      childCount: 6,
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
            onPressed: (state.image0 != null ||
                        state.image1 != null ||
                        state.image2 != null ||
                        state.image3 != null ||
                        state.image4 != null ||
                        state.image5 != null ||
                        state.images.isNotEmpty) &&
                    !state.isSubmitting
                ? () {
                    if (state.isedited)
                      context.read<PhotosBloc>().add(PhotosEvent.next());
                    else {
                      // navdt to videos route
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BlocProvider(
                          create: (context) => getIt<VideosBloc>()
                            ..add(VideosEvent.add(state.listing)),
                          child: VideosPage(),
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
        }),
      ),
    );
  }
}

Future showPickImageDialog(PhotosState state, int index, BuildContext context) {
  // set up the button
  Widget galleryButton = TextButton(
    child: Text(
      "Gallery",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
      textAlign: TextAlign.end,
    ),
    onPressed: () {
      // call pick from gallerry
      getImage(state, index, context);
      Navigator.pop(context); // dismiss alert dialog
    },
  );

  Widget cameraButton = TextButton(
    child: Text(
      "Camera",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
      textAlign: TextAlign.end,
    ),
    onPressed: () {
      // camera fxn
      getImageCamera(state, index, context);
      Navigator.pop(context); // dismiss alert dialog
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Choose",
      style: Theme.of(context).textTheme.headline6,
    ),
    content: Text(
      "Take photo or pick from gallery",
      textAlign: TextAlign.left,
    ),
    actions: [
      galleryButton,
      cameraButton,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );

  // show the dialog
  return showDialog(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Future<void> retrieveLostData(
    int index, ImagePicker picker, BuildContext context) async {
  final LostData response = await picker.getLostData();
  if (response.isEmpty) {
    return;
  }
  if (response.file != null) {
    if (response.type == RetrieveType.image) {
      switch (index) {
        case 0:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image0changed(File(response.file!.path)));
          break;
        case 1:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image1changed(File(response.file!.path)));
          break;
        case 2:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image2changed(File(response.file!.path)));
          break;
        case 3:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image3changed(File(response.file!.path)));
          break;
        case 4:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image4changed(File(response.file!.path)));
          break;
        case 5:
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image5changed(File(response.file!.path)));
          break;

        default:
          print('no index found');
          break;
      }
    }
  } else {
    print('failed');
  }
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
          await retrieveLostData(index, picker, context);
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
          await retrieveLostData(index, picker, context);
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
          await retrieveLostData(index, picker, context);
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
          await retrieveLostData(index, picker, context);
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
          await retrieveLostData(index, picker, context);
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
          await retrieveLostData(index, picker, context);
      }
      break;
    default:
  }
}

Future getImageCamera(
    PhotosState state, int index, BuildContext context) async {
  // get image
  final picker = ImagePicker();
  // check what index is prssd
  switch (index) {
    case 0:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image0changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 1:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image1changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 2:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image2changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 3:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image3changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 4:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image4changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 5:
      {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null)
          context
              .read<PhotosBloc>()
              .add(PhotosEvent.image5changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    default:
  }
}

Future<bool> _willPopCallback(BuildContext context) async {
  final bloc = context.read<PhotosBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required PhotosBloc bloc}) {
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
      bloc..add(PhotosEvent.save());
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
