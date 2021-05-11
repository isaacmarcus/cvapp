import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/title_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cvapp/constants.dart';

class LandingPage extends StatefulWidget {
  static const String id = "landing_page";

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Isaac Marcus",
                    style: themeData.textTheme.headline1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TitleTextButton(
                        buttonText: "HOME",
                        pressedFunction: () {
                          print("button pressed");
                        },
                      ),
                      TitleTextButton(
                        buttonText: "ABOUT",
                        pressedFunction: () {
                          print("button pressed");
                        },
                      ),
                      TitleTextButton(
                        buttonText: "WORK",
                        pressedFunction: () {
                          print("button pressed");
                        },
                      ),
                      TitleTextButton(
                        buttonText: "CONTACT",
                        pressedFunction: () {
                          print("button presseds");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
