import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class WorkoutList extends StatelessWidget {
  WorkoutList({
    super.key,
  });
  static String myVideoId = 'T_X5rb3G5lk';
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // autoPlay: true,

      mute: false,
      autoPlay: false,
      disableDragSeek: false,
      loop: true,
      isLive: false,
      forceHD: false,
      /*  enableCaption: true, */
      hideThumbnail: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15,
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Work Out",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Strong and Big Chest",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFA70808),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "6",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "workouts",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25,
                bottom: 7,
              ),
              width: size.width,
              height: size.height * 0.3,
              child: YoutubePlayer(
                controller: _controller,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Bench Press",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next:"),
                        Text(" Dumbbell Press"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularPercentIndicator(
                radius: 60,
                lineWidth: 15,
                percent: 0.7,
                progressColor: const Color(0xFFA70808),
                backgroundColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFA70808),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12x",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  " reps ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                // this is the place for Next set Button and Next Exercise
              ],
            ),
          ],
        ),
      ),
    );
  }
}
