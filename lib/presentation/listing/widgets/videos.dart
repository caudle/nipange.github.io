import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/price/price_bloc.dart';
import 'package:nipange/application/videos/videos_bloc.dart';
import 'package:nipange/injector.dart';

import 'package:nipange/presentation/listing/widgets/price.dart';
import 'package:nipange/utils/api_conn.dart';

import 'package:nipange/widgets/progress_indicator.dart';
import 'package:nipange/widgets/videoWiget.dart';
import 'package:video_player/video_player.dart';

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<VideosBloc, VideosState>(builder: (context, state) {
              return TextButton(
                onPressed: (state.video0 != null ||
                            state.video1 != null ||
                            state.videos.isNotEmpty) &&
                        state.isedited &&
                        !state.isSubmitting
                    ? () {
                        context.read<VideosBloc>().add(VideosEvent.save());
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
        body: BlocConsumer<VideosBloc, VideosState>(listener: (context, state) {
          if (state.isSuccess) {
            // navdt to price route
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BlocProvider(
                create: (context) =>
                    getIt<PriceBloc>()..add(PriceEvent.add(state.listing)),
                child: PricePage(),
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
        }, builder: (context, state) {
          return CustomScrollView(
            slivers: [
              // title
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.topCenter,
                  padding:
                      EdgeInsets.only(left: 18, top: 30, bottom: 30, right: 18),
                  child: Text(
                    'Videos of your place',
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

              // vids
              SliverPadding(
                key: UniqueKey(),
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      List<File?> videoFiles =
                          List.from([state.video0, state.video1]);

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Material(
                          child: Container(
                            child: videoFiles[index] != null
                                ? Stack(
                                    key: UniqueKey(),
                                    children: [
                                      VideoWidget(
                                        key: UniqueKey(),
                                        videoPlayerController:
                                            VideoPlayerController.file(
                                                videoFiles[index]!),
                                        looping: false,
                                        autoplay: false,
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
                                              context.read<VideosBloc>()
                                                ..add(VideosEvent.videoDeleted(
                                                    index));
                                            },
                                          ))
                                    ],
                                  )
                                : state.videos.length > index
                                    ? Stack(
                                        children: [
                                          VideoWidget(
                                            key: UniqueKey(),
                                            videoPlayerController:
                                                VideoPlayerController.network(
                                                    '$api/${state.videos[index]}'),
                                            looping: false,
                                            autoplay: false,
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
                                                  context.read<VideosBloc>()
                                                    ..add(VideosEvent
                                                        .videosChanged(index));
                                                },
                                              ))
                                        ],
                                      )
                                    : IconButton(
                                        key: UniqueKey(),
                                        onPressed: () {
                                          showPickVideoDialog(
                                              state, index, context);
                                        },
                                        icon: Icon(
                                          Icons.add_box,
                                          size: 50,
                                        ),
                                      ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            height: 220,
                          ),
                        ),
                      );
                    },
                    childCount: 2,
                  ),
                ),
              ),
            ],
          );
        }),
        floatingActionButton:
            BlocBuilder<VideosBloc, VideosState>(builder: (context, state) {
          return ElevatedButton(
            onPressed: (state.video0 != null ||
                        state.video1 != null ||
                        state.videos.isNotEmpty) &&
                    !state.isSubmitting
                ? () {
                    if (state.isedited)
                      context.read<VideosBloc>().add(VideosEvent.next());
                    else {
                      // navdt to price route
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BlocProvider(
                          create: (context) => getIt<PriceBloc>()
                            ..add(PriceEvent.add(state.listing)),
                          child: PricePage(),
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

Future showPickVideoDialog(VideosState state, int index, BuildContext context) {
  // set up the button
  Widget galleryButton = TextButton(
    child: Text(
      "Gallery",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
      textAlign: TextAlign.end,
    ),
    onPressed: () {
      // call pick from gallerry
      getVideo(state, index, context);
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
      getVideoCamera(state, index, context);
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
      "Take video or pick from gallery",
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
    if (response.type == RetrieveType.video) {
      switch (index) {
        case 0:
          context
              .read<VideosBloc>()
              .add(VideosEvent.video0changed(File(response.file!.path)));
          break;
        case 1:
          context
              .read<VideosBloc>()
              .add(VideosEvent.video1changed(File(response.file!.path)));
          break;
        default:
          break;
      }
    }
  } else {}
}

Future getVideo(VideosState state, int index, BuildContext context) async {
  // get image
  final picker = ImagePicker();
  // check what index is prssd
  switch (index) {
    case 0:
      {
        final pickedFile = await picker.getVideo(source: ImageSource.gallery);
        if (pickedFile != null)
          context
              .read<VideosBloc>()
              .add(VideosEvent.video0changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 1:
      {
        final pickedFile = await picker.getVideo(source: ImageSource.gallery);
        if (pickedFile != null)
          context
              .read<VideosBloc>()
              .add(VideosEvent.video1changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    default:
  }
}

Future getVideoCamera(
    VideosState state, int index, BuildContext context) async {
  // get image
  final picker = ImagePicker();
  // check what index is prssd
  switch (index) {
    case 0:
      {
        final pickedFile = await picker.getVideo(
            source: ImageSource.camera, maxDuration: Duration(minutes: 5));
        if (pickedFile != null)
          context
              .read<VideosBloc>()
              .add(VideosEvent.video0changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    case 1:
      {
        final pickedFile = await picker.getVideo(
            source: ImageSource.camera, maxDuration: Duration(minutes: 5));
        if (pickedFile != null)
          context
              .read<VideosBloc>()
              .add(VideosEvent.video1changed(File(pickedFile.path)));
        else
          await retrieveLostData(index, picker, context);
      }
      break;
    default:
  }
}

Future<bool> _willPopCallback(BuildContext context) async {
  final bloc = context.read<VideosBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required VideosBloc bloc}) {
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
      bloc..add(VideosEvent.save());
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
