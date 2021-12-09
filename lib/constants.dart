import 'package:flutter/material.dart';

import 'Screens/about_page.dart';
import 'Screens/contact_page.dart';
import 'Screens/landing_page.dart';
import 'Screens/splash_page.dart';
import 'Screens/work_page.dart';

const kScreenTitlePadding = EdgeInsets.all(15);
const kMasterBodyPaddingL = EdgeInsets.all(200);
const kMasterPaddingL = EdgeInsets.all(60);
const kMasterPaddingS = EdgeInsets.all(28);
const kAppBarHeightDoubleL = 100.0;
const kAppBarHeightDoubleS = 60.0;
const kAppBarHeightL = Size.fromHeight(100);
const kAppBarHeightS = Size.fromHeight(60);
const kSymPadLarge = EdgeInsets.symmetric(horizontal: 60);
const kSymPadSmall = EdgeInsets.symmetric(horizontal: 28);

const kMenuTitles = [
  ['HOME', LandingPage.id],
  ['ABOUT', AboutPage.id],
  ['WORK', WorkPage.id],
  ['CONTACT', ContactPage.id],
];

ThemeData themeData = ThemeData(
  fontFamily: "RobotoMono",
  canvasColor: Color(0xff393e46),
  scaffoldBackgroundColor: Color(0xff393e46),
  primaryColor: Color(0xff393e46),
  primaryColorLight: Color(0xFFaad8d3),
  errorColor: Color(0xFFFF6933),
  backgroundColor: Color(0xFFeeeeee),
  cardColor: Colors.white,
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 55,
      fontWeight: FontWeight.w500,
    ),
    headline2: TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 40,
      fontWeight: FontWeight.w500,
    ),
    headline5: TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 18,
      fontWeight: FontWeight.w200,
    ),
    bodyText1: TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 18,
      fontWeight: FontWeight.w300,
      height: 1.5,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color(0xFF00adb5),
    primary: Color(0xFFaad8d3),
    brightness: Brightness.dark,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFFaad8d3),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color(0xFF00adb5),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  ),
  cardTheme: CardTheme(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  ),
);

String kBio =
    "Hello! I'm Isaac Marcus Lam (b. 1995), a software developer who also has a passion in Design, Music and Audio Engineering. I studied music in the School of the Arts (Singapore) and majored in Computer Science at the Singapore University of Technology & Design. I'm interested in the integration of design and technology to explore the world through various mediums. In my free time you can find me Up-Skilling, making Music, and swinging about at a climbing gym. If my work interests you, need a solution to your problem, or simply want to connect, you can hit me up and I'd love to have a coffee with you.";
