import 'package:flutter/material.dart';

import 'Pages/Detail_of_Subcategory.dart';
import 'Pages/FinalReportPage.dart';
import 'Pages/SchedulList.dart';
import 'Pages/WorkoutList.dart';
import 'Widgets/YotubePlayerPage.dart';
import 'Widgets/chart.dart';
import 'Pages/login_screen.dart';
import 'Pages/signUp_screen.dart';
import 'Pages/splash_screen.dart';
import 'Widgets/backButton.dart';

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
      theme: ThemeData.dark(),

      title: 'Flutter Example',
      home:
          // WorkoutList(),
          SchedulList(),
      // SplashScreen(),
      // SignUpScreen(),
      //  LoginScreen(),
      // FinalReportPage(),
      // DetailSubList(),
    );
  }
}
