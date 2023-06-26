import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// import 'Pages/Detail_of_Subcategory.txt';

import 'Pages/Detail_of_Subcategory.dart';
import 'Pages/FinalReportPage.dart';
import 'Pages/LanguageLocalTest.dart';
import 'Pages/SchedulList.dart';
import 'Pages/WorkoutList.dart';
import 'Pages/main_landing_page.dart';
import 'Pages/sport_category_page.dart';
import 'Widgets/YotubePlayerPage.dart';
import 'Widgets/chart.dart';
import 'Pages/login_screen.dart';
import 'Pages/signUp_screen.dart';
import 'Pages/splash_screen.dart';
import 'Widgets/backButton.dart';
import 'model/usermodel.dart';
import 'mongotest.dart';
import '../translations/codegen_loader.g.dart';
import './translations/local_keys.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('am'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('am'),
      assetLoader: CodegenLoader(),
      child: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // adding nessesary deligates for app localizasion
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      // Theme of the page
      theme: ThemeData.dark(),
      title: 'Flutter Example',

      routes: {
        // '/': (context) => SplashScreen(),
        '/Login': (context) => LoginScreen(),
        '/Signup': (context) => SignUpScreen(),
        '/Main': (context) => MainLandingPage(),

        '/Final': (context) => FinalReportPage(),
        '/Detail': (context) => DetailSubList(),
        '/SportCat': (context) => SportsCategory(),
        // Pages for pro version
        '/Schedule': (context) => SchedulList(),
        '/Workout': (context) => WorkoutList(),
      },

      home:
          //  SportsCategory(),

          // WorkoutList(),

          // SchedulList(),
          SplashScreen(),
      // SignUpScreen(),
      // LoginScreen(),
      // FinalReportPage(),

      // MainLandingPage(),
      // SchedulList(),
      // mongotest(),
      // Lang(),
    );
  }
}
