import '../constants.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/master_app_bar.dart';
import 'package:flutter/material.dart';

/* --------------------------------------------------------------------------

Page Title: About Page
About Description: About Page for bio and description 

-----------------------------------------------------------------------------*/

class AboutPage extends StatefulWidget {
  static const String id = "about_page";

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
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
        child: MasterAppBar(
          drawerSlideController: _drawerSlideController,
          keyList: [],
        ),
        preferredSize: MediaQuery.of(context).size.width >= 725
            ? kAppBarHeightL
            : kAppBarHeightS,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Main page body content
          _buildContent(),
          // Stacked Menu
          _buildDrawer(),
        ],
      ),
    );
  }

  // Page Content
  Widget _buildContent() {
    return Center(
      child: Padding(
        padding: MediaQuery.of(context).size.width >= 725
            ? kMasterBodyPaddingL
            : kMasterPaddingS,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  // Profile Picture image
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/profile_pic.jpeg'),
                        )),
                  ),
                  SizedBox(
                    width: 100,
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
              ),
            ),
            Hero(
              tag: "title",
              child: Text(
                "About Me",
                style: MediaQuery.of(context).size.width >= 725
                    ? themeData.textTheme.headline1
                    : themeData.textTheme.headline2,
              ),
            )
          ],
        ),
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
