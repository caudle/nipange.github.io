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
        allowFullScreen: false,
        showControls: true,
        aspectRatio: 16 / 9,
        showControlsOnInitialize: true,
        autoInitialize: true,
        looping: widget.looping,
        autoPlay: widget.autoplay,
        errorBuilder: (context, error) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                error,
                style: TextStyle(color: Colors.red),
              ),
            ),
          );
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
    return Chewie(key: UniqueKey(), controller: _chewieController!);
  }
}
