import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/title_text_button.dart';
import 'package:flutter/material.dart';

class FullScreenABarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
