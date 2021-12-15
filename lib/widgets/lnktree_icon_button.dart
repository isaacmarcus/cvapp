import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinktreeIconButton extends StatelessWidget {
  final String linkurl;
  final Icon linkicon;

  LinktreeIconButton({
    required this.linkurl,
    required this.linkicon,
  });

  // const LinktreeIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: IconButton(
        onPressed: () {
          launch(linkurl);
        },
        icon: linkicon,
        iconSize: 30,
        padding: EdgeInsets.all(0),
        splashRadius: 25,
      ),
    );
  }
}
