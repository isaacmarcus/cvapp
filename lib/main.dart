import 'package:cvapp/Screens/landing_page.dart';
import 'package:cvapp/constants.dart';
import 'package:cvapp/screens/about_page.dart';
import 'package:cvapp/screens/contact_page.dart';
import 'package:cvapp/screens/splash_page.dart';
import 'package:cvapp/screens/work_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Isaac Marcus',
      theme: themeData,
      // Screen IDS initiated as static vars in respective screens
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => SplashPage(),
        LandingPage.id: (context) => LandingPage(),
        WorkPage.id: (context) => WorkPage(),
        AboutPage.id: (context) => AboutPage(),
        ContactPage.id: (context) => ContactPage(),
      },
    );
  }
}
