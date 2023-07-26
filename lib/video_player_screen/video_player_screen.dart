import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart%20';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(autoPlay: true, mute: false, isLive: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        builder: (context, player) {
          return Scaffold(
            body: player,
          );
        },
        player: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
        ));
  }
}
