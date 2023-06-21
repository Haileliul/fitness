import 'package:flutter/material.dart';
import '../Widgets/animatedIcon.dart';
import '../Widgets/backButton.dart';
import 'YotubePlayerPage.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class DetailSubList extends StatelessWidget {
  const DetailSubList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //create a new player
    final assetsAudioPlayer = AssetsAudioPlayer();
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              // color: Colors.white.withOpacity(0.4),
              ),
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          youtubplayer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: backButton(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Icon(Icons.person),
                              title: Text("The title of  sport"),
                              subtitle: Text("The dicription"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 28.0,
                                vertical: 20,
                              ),
                              child: Text("This is the place where the"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // here will the music go

              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.red,
                        Color.fromARGB(255, 223, 99, 99),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedIconExample(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
