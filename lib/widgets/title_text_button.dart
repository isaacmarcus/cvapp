import 'package:cvapp/constants.dart';
import 'package:flutter/material.dart';

class TitleTextButton extends StatelessWidget {
  final String buttonText;
  final Function pressedFunction;

  const TitleTextButton({
    @required this.buttonText,
    @required this.pressedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: TextButton(
        onPressed: pressedFunction,
        child: Text(
          buttonText,
          style: themeData.textTheme.headline5,
        ),
      ),
    );
  }
}
