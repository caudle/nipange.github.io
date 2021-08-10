import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  Player({
    Key? key,
    required this.videoPlayerController,
  }) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _initializeVideoPlayerFuture = widget.videoPlayerController.initialize();
    widget.videoPlayerController.setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            child: VideoPlayer(widget.videoPlayerController),
            onTap: _onTap,
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  //when tappd
  void _onTap() {
    setState(() {
      // If the video is playing, pause it.
      if (widget.videoPlayerController.value.isPlaying) {
        widget.videoPlayerController.pause();
      } else {
        // If the video is paused, play it.
        widget.videoPlayerController.play();
      }
    });
  }
}
