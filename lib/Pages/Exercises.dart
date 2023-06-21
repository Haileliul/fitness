import 'package:e_fit/screens/main_landing_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// import 'Pages/Detail_of_Subcategory.dart';
// import 'Pages/FinalReportPage.dart';
// import 'Pages/YotubePlayerPage.dart';
// import 'Pages/chart.dart';
// import 'Pages/login_screen.dart';
// import 'Pages/signUp_screen.dart';
// import 'Pages/splash_screen.dart';
// import 'Widgets/backButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      // Theme of the page

      title: 'Flutter Example',

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF302B2B),
      ),

      home: Scaffold(
        body: MainLandingPage(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GNav(
              color: Colors.grey,
              duration: Duration(milliseconds: 200),
              gap: 12.0,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              tabBorderRadius: 20.0,
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.solidMessage,
                  text: 'Chat',
                ),
                GButton(
                  icon: FontAwesomeIcons.dumbbell,
                  text: 'Workouts',
                ),
                GButton(
                  margin: EdgeInsets.all(0),
                  gap: 5.0,
                  icon: FontAwesomeIcons.calculator,
                  text: 'BMI',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
