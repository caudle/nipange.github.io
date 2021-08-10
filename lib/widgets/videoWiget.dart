import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  VideoWidget({
    Key? key,
    required this.videoPlayerController,
    required this.looping,
    required this.autoplay,
  }) : super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  ChewieController? _chewieController;

  @override
  void initState() {
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        allowFullScreen: true,
        showControls: false,
        showControlsOnInitialize: false,
        autoInitialize: true,
        looping: widget.looping,
        autoPlay: widget.autoplay,
        errorBuilder: (context, error) {
          return Center(
            child: Text(
              error,
              style: TextStyle(color: Colors.red),
            ),
          );
        });

    widget.videoPlayerController.addListener(() {
      if (widget.videoPlayerController.value.isInitialized && mounted)
        setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _chewieController != null &&
            widget.videoPlayerController.value.isInitialized
        ? GestureDetector(
            child: Chewie(controller: _chewieController!),
            onTap: _onTap,
          )
        : Center(
            child: CircularProgressIndicator(),
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
