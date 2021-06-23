import 'dart:ui';

import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/menu_drawer.dart';
import 'package:cvapp/widgets/master_app_bar.dart';
import 'package:cvapp/widgets/moire_box.dart';
import 'package:flutter/material.dart';

/* --------------------------------------------------------------------------

Page Title: Landing Page
Widget Description: Landing Page to welcome visitors

-----------------------------------------------------------------------------*/

class LandingPage extends StatefulWidget {
  static const String id = "landing_page";

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _drawerSlideController;

  @override
  void initState() {
    super.initState();

    _drawerSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
  }

  @override
  void dispose() {
    _drawerSlideController.dispose();
    super.dispose();
  }

  bool _isDrawerClosed() {
    return _drawerSlideController.value == 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MasterAppBar(drawerSlideController: _drawerSlideController),
        preferredSize: MediaQuery.of(context).size.width >= 725
            ? kAppBarHeightL
            : kAppBarHeightS,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Hero(
            tag: "MoireBox2",
            child: MoireBox(
              scrnContext: context,
              numberOfBoxes: 30,
              borderColour: Colors.red[400],
              boxRadius: 0,
              boxWidth: MediaQuery.of(context).size.width >= 725
                  ? 435
                  : MediaQuery.of(context).size.width * 0.6,
              boxHeight: MediaQuery.of(context).size.height * 0.7,
              xPosition: 28,
              yPosition: MediaQuery.of(context).size.width >= 725
                  ? (-kAppBarHeightDoubleL / 2) + 27
                  : (-kAppBarHeightDoubleS / 2) + 27,
            ),
          ),
          Hero(
            tag: "MoireBox1",
            child: MoireBox(
              scrnContext: context,
              numberOfBoxes: 30,
              borderColour: Colors.amber[300],
              boxRadius: 0,
              boxWidth: MediaQuery.of(context).size.width >= 725
                  ? 435
                  : MediaQuery.of(context).size.width * 0.6,
              boxHeight: MediaQuery.of(context).size.height * 0.7,
              xPosition: -28,
              yPosition: MediaQuery.of(context).size.width >= 725
                  ? (-kAppBarHeightDoubleL / 2) - 27
                  : (-kAppBarHeightDoubleS / 2) - 27,
            ),
          ),
          // Main page body content
          Container(
            color: Colors.transparent,
            child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
                child: _buildContent()),
          ),
          // Stacked Menu
          _buildDrawer(),
        ],
      ),
    );
  }

  // Page Content
  Widget _buildContent() {
    return Padding(
      padding: MediaQuery.of(context).size.width >= 725
          ? kMasterPaddingL
          : kMasterPaddingS,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: "title",
            child: Center(
              child: Text(
                "TECHNOLOGY, AUDIO, DESIGN",
                style: MediaQuery.of(context).size.width >= 725
                    ? themeData.textTheme.headline1
                    : themeData.textTheme.headline2,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return AnimatedBuilder(
      animation: _drawerSlideController,
      builder: (context, child) {
        return FractionalTranslation(
          translation: Offset(1.0 - _drawerSlideController.value, 0.0),
          child: _isDrawerClosed()
              ? const SizedBox()
              : Menu(
                  dsController: _drawerSlideController,
                ),
        );
      },
    );
  }
}
