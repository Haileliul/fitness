import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:we_slide/we_slide.dart';

import '../Widgets/YotubePlayerPage.dart';
import '../Widgets/backButton.dart';

class WeSlideTest extends StatefulWidget {
  const WeSlideTest({super.key});

  @override
  State<WeSlideTest> createState() => _WeSlideTestState();
}

class _WeSlideTestState extends State<WeSlideTest> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    const double panelMinSize = 70.0;
    final double panelMaxSize = MediaQuery.of(context).size.height / 2;
    return SafeArea(
      child: Scaffold(
        body: WeSlide(
          panelMinSize: panelMinSize,
          panelMaxSize: panelMaxSize,
          body: Container(
            decoration: const BoxDecoration(
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: backButton(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("The title of  sport"),
                        subtitle: Text("The dicription"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
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
            child: const Center(child: Text("This is the panel 😊")),
          ),
        ),
      ),
    );
  }
}
