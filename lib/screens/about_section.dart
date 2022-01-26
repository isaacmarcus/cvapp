import 'package:flutter/material.dart';

import '../constants.dart';

class AboutSection extends StatefulWidget {
  final key;

  AboutSection({required this.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      key: widget.key,
      width: screenWidth,
      // height: MediaQuery.of(context).size.height - kAppBarHeightDoubleL,
      child: Center(
        child: Padding(
          padding: screenWidth >= 725
              ? EdgeInsets.all(screenWidth * 0.1)
              : kMasterPaddingS,
          child: Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "about-title",
                  child: Text(
                    "About Me",
                    style: screenWidth >= 725
                        ? themeData.textTheme.headline1
                        : themeData.textTheme.headline2,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                screenWidth >= 725 ? _rowBio(context) : _colBio(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // For when screen size is > 725
  Widget _rowBio(context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        // Profile Picture image
        // TODO: Figure out how to animate hover
        CircleAvatar(
          radius:
              screenWidth >= 1080 ? screenWidth * 0.085 : screenWidth * 0.15,
          backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
        ),
        SizedBox(
          width: screenWidth * 0.05,
        ),
        // Text description for bio/about me
        Flexible(
          child: Text(
            kBio,
            style: themeData.textTheme.bodyText1,
            maxLines: 50,
          ),
        ),
      ],
    );
  }

  Widget _colBio(context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        // Profile Picture image
        Container(
          width: screenWidth >= 725 ? 250 : screenHeight * 0.25,
          height: screenWidth >= 725 ? 250 : screenHeight * 0.25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/profile_pic.jpeg'),
              )),
        ),
        SizedBox(
          height: 50,
        ),
        // Text description for bio/about me
        Text(
          kBio,
          style: themeData.textTheme.bodyText1,
          maxLines: 50,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
