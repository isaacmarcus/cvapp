import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/master_app_bar.dart';
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
        child: MasterAppBar(),
        preferredSize: Size.fromHeight(100),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Padding(
          padding: kMasterPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "TECHNOLOGY, AUDIO, DESIGN",
                style: themeData.textTheme.headline1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
