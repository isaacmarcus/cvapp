import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/title_text_button.dart';
import 'package:flutter/material.dart';

class MasterAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTextButton(
                buttonText: "Isaac Marcus",
                pressedFunction: () {
                  print("button pressed");
                },
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
                  SizedBox(
                    width: 20,
                  ),
                  TitleTextButton(
                    buttonText: "ABOUT",
                    pressedFunction: () {
                      print("button pressed");
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TitleTextButton(
                    buttonText: "WORK",
                    pressedFunction: () {
                      print("button pressed");
                    },
                  ),
                  SizedBox(
                    width: 20,
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
    );
  }
}
