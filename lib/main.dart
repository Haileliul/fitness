import 'package:fitness/Pages/we_slide_trial.dart';
import 'package:flutter/material.dart';


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
      home: const WeSlideTest(),
      // SignUpScreen(),
      //  LoginScreen(),
      // FinalReportPage(),
      // DetailSubList(),
    );
  }
}
