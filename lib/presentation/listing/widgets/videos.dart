import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nipange/application/price/price_bloc.dart';
import 'package:nipange/application/videos/videos_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/price.dart';
import 'package:nipange/widgets/videoWiget.dart';
import 'package:video_player/video_player.dart';

class VideosPage extends StatelessWidget {
  final String api = "http://172.20.10.11:5000";
  // get image
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              .pushReplacementNamed('host');
        }
      }, builder: (context, state) {
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
                            onPressed: state.video0 != null ||
                                    state.video1 != null ||
                                    state.videos!.isNotEmpty
                                ? () {
                                    context
                                        .read<VideosBloc>()
                                        .add(VideosEvent.save());
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
                      'Videos of your place',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
            ),

            // vids
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    print('ui video state before: ${state.video0}');
                    List<File?> videoFiles =
                        List.from([state.video0, state.video1]);
                    print('videos: $videoFiles');
                    print('ui video state after: ${state.video0}');
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Material(
                        child: InkWell(
                          child: Container(
                            child: videoFiles[index] != null
                                ? VideoWidget(
                                    key: UniqueKey(),
                                    videoPlayerController:
                                        VideoPlayerController.file(
                                            videoFiles[index]!),
                                    looping: false,
                                    autoplay: false,
                                  )
                                : state.videos!.length > index
                                    ? VideoWidget(
                                        videoPlayerController:
                                            VideoPlayerController.network(
                                                '$api/${state.videos![index]}'),
                                        looping: false,
                                        autoplay: false,
                                      )
                                    : Icon(
                                        Icons.add_box,
                                        size: 40,
                                      ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            height: 220,
                          ),
                          onTap: () {
                            getVideo(state, index, context);
                          },
                        ),
                        elevation: 1,
                      ),
                    );
                  },
                  childCount: 2,
                ),
              ),
            ),

            //progress indicator
            if (state.isSubmitting)
              SliverToBoxAdapter(
                child: Container(
                  height: 20,
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LinearProgressIndicator(),
                ),
              ),

            //error
            if (state.failureMessage.isNotEmpty)
              SliverToBoxAdapter(
                child: Container(
                  height: 20,
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
      }),
      floatingActionButton:
          BlocBuilder<VideosBloc, VideosState>(builder: (context, state) {
        return ElevatedButton(
          onPressed: state.video0 != null ||
                  state.video1 != null ||
                  state.videos!.isNotEmpty
              ? () {
                  context.read<VideosBloc>().add(VideosEvent.next());
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

  Future getVideo(VideosState state, int index, BuildContext context) async {
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
            print('failed to get video at index: $index');
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
            print('failed to get video at index: $index');
        }
        break;
      default:
        print('no index found');
    }
  }

  Future<void> retrieveLostData(int index, BuildContext context) async {
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
            print('no index found');
            break;
        }
      }
    } else {
      print('failed');
    }
  }
}
