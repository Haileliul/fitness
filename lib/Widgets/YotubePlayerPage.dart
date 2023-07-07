import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtubplayer extends StatelessWidget {
  static String myVideoId = 'T_X5rb3G5lk';
  // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
  // it's an interesting video from NASA on Youtube
  // PQSagzssvUQ

  // Initiate the Youtube player controller
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,

      mute: false,
      // autoPlay: false,
      disableDragSeek: false,
      loop: true,
      isLive: false,
      forceHD: false,
      /*  enableCaption: true, */
      hideThumbnail: true,
    ),
  );

  youtubplayer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.3,
      child: YoutubePlayer(
        controller: _controller,
      ),
    );
  }
}
