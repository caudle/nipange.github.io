import 'package:flutter/material.dart';
import 'package:nipange/widgets/progress_indicator.dart';
import 'package:video_player/video_player.dart';

class CustomPlayer extends StatefulWidget {
  final VideoPlayerController controller;

  CustomPlayer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _CustomPlayerState createState() => _CustomPlayerState();
}

class _CustomPlayerState extends State<CustomPlayer> {
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _initializeVideoPlayerFuture = widget.controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            // Use the VideoPlayer widget to display the video.
            child: VideoPlayer(widget.controller),
          );
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(
            child: KCircularProgressIndicator(),
          );
        }
      },
    );
  }
}
