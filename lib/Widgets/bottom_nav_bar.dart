import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fitness/constants/constants.dart';
import 'package:feather_icons/feather_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GNav(
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          activeColor: kSecondaryColor,
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
          color: Colors.grey,
          duration: const Duration(milliseconds: 200),
          gap: 12.0,
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          tabBorderRadius: 20.0,
          tabs: const [
            GButton(
              icon: FeatherIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: FeatherIcons.messageSquare,
              text: 'Chat',
            ),
            GButton(
              icon: FontAwesomeIcons.dumbbell,
              text: 'Workouts',
            ),
            GButton(
              gap: 5.0,
              icon: FontAwesomeIcons.calculator,
              text: 'BMI',
            ),
          ],
        ),
      ),
    );
  }
}
