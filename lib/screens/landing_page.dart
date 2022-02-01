import 'dart:ui';

import '../constants.dart';

import '../widgets/menu_drawer.dart';
import '../widgets/master_app_bar.dart';
import '../widgets/moire_box.dart';
import 'package:flutter/material.dart';

// import 'about_section.dart';
import 'work_section.dart';
import 'contact_section.dart';

/* --------------------------------------------------------------------------

Page Title: Landing Page
Widget Description: Landing Page to welcome visitors

-----------------------------------------------------------------------------*/

class LandingPage extends StatefulWidget {
  static const String id = "landing_page";
  // final ValueListenable sectionNotifier;
  static final landingKey = GlobalKey();
  static final aboutKey = GlobalKey();
  static final workKey = GlobalKey();
  static final contactKey = GlobalKey();

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
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    final keyList = [
      LandingPage.landingKey,
      LandingPage.aboutKey,
      LandingPage.workKey,
      LandingPage.contactKey
    ];

    return Scaffold(
      appBar: PreferredSize(
        child: MasterAppBar(
          drawerSlideController: _drawerSlideController,
          keyList: keyList,
        ),
        preferredSize: screenWidth >= 725 ? kAppBarHeightL : kAppBarHeightS,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _buildMoireBoxes(screenWidth, screenHeight),
          // Main page body content (ORIGINAL)
          // Container(
          //   color: Colors.transparent,
          //   child: BackdropFilter(
          //     filter: new ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
          //     child: _buildContent(),
          //   ),
          // ),
          // Main page body content (Using SCSV)
          Container(
            color: Colors.transparent,
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildContent(screenWidth, screenHeight),
                    AboutSection(key: LandingPage.aboutKey),
                    WorkSection(key: LandingPage.workKey),
                    ContactSection(key: LandingPage.contactKey),
                  ],
                ),
              ),
              // Slivers and Custom Scroll view had a bug, revert to SCSV first
              // child: CustomScrollView(
              //   // physics: ,
              //   slivers: [
              //     SliverList(
              //       delegate: SliverChildListDelegate([
              //         _buildContent(screenWidth, screenHeight),
              //         AboutSection(key: LandingPage.aboutKey),
              //         WorkSection(key: LandingPage.workKey),
              //         ContactSection(key: LandingPage.contactKey),
              //       ]),
              //     ),
              //   ],
              // ),
            ),
          ),
          // Stacked Menu
          _buildDrawer(keyList),
        ],
      ),
    );
  }

  // Moire Boxes
  Widget _buildMoireBoxes(screenWidth, screenHeight) {
    return Stack(
      children: [
        Hero(
          tag: "MoireBox2",
          child: MoireBox(
            scrnContext: context,
            numberOfBoxes: 30,
            borderColour: Colors.red[400],
            boxRadius: 0,
            boxWidth: screenWidth >= 725 ? 435 : screenWidth * 0.55,
            boxHeight:
                screenWidth >= 725 ? screenHeight * 0.7 : screenHeight * 0.5,
            xPosition: 28,
            yPosition: screenWidth >= 725
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
            boxWidth: screenWidth >= 725 ? 435 : screenWidth * 0.55,
            boxHeight: MediaQuery.of(context).size.width >= 725
                ? screenHeight * 0.7
                : screenHeight * 0.5,
            xPosition: -28,
            yPosition: screenWidth >= 725
                ? (-kAppBarHeightDoubleL / 2) - 27
                : (-kAppBarHeightDoubleS / 2) - 27,
          ),
        ),
      ],
    );
  }

  // Page Content
  Widget _buildContent(screenWidth, screenHeight) {
    return Padding(
      key: LandingPage.landingKey,
      padding: screenWidth >= 725 ? kMasterPaddingL : kMasterPaddingS,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Main title
          Hero(
            tag: "title",
            child: Container(
              width: screenWidth,
              height: screenWidth >= 725
                  ? screenHeight - kAppBarHeightDoubleL
                  : screenHeight - kAppBarHeightDoubleS,
              child: Center(
                child: Text(
                  "TECHNOLOGY, DESIGN, AUDIO",
                  style: screenWidth >= 725
                      ? themeData.textTheme.headline1
                      : themeData.textTheme.headline2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // drawer builder
  Widget _buildDrawer(keyList) {
    return AnimatedBuilder(
      animation: _drawerSlideController,
      builder: (context, child) {
        return FractionalTranslation(
          translation: Offset(1.0 - _drawerSlideController.value, 0.0),
          child: _isDrawerClosed()
              ? const SizedBox()
              : Menu(
                  dsController: _drawerSlideController,
                  keyList: keyList,
                ),
        );
      },
    );
  }
}

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
