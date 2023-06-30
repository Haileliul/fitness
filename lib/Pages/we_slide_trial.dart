import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:we_slide/we_slide.dart';

import '../Widgets/YotubePlayerPage.dart';
import '../Widgets/backButton.dart';
import 'package:miniplayer/miniplayer.dart';

class WeSlideTest extends StatefulWidget {
  const WeSlideTest({super.key});

  @override
  State<WeSlideTest> createState() => _WeSlideTestState();
}

class _WeSlideTestState extends State<WeSlideTest> {
  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    final double _panelMinSize = 70.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height / 2;
    return SafeArea(
      child: Scaffold(
        body: WeSlide(
          panelMinSize: _panelMinSize,
          panelMaxSize: _panelMaxSize,
          body: Container(
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
          panel: Container(
            color: kSecondaryColor,
            child: Center(child: Text("This is the panel 😊")),
          ),
        ),
      ),
    );
  }
}
