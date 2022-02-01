import '../constants.dart';
import '../widgets/linktree_icons.dart';
import '../widgets/lnktree_icon_button.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/master_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/* --------------------------------------------------------------------------

Page Title: Contact Page
Page Description: to give details of contact points

-----------------------------------------------------------------------------*/

class ContactPage extends StatefulWidget {
  static const String id = "contact_page";

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage>
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

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MasterAppBar(
          drawerSlideController: _drawerSlideController,
          // keyList: [],
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
            ? kMasterPaddingL
            : kMasterPaddingS,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Hero(
              tag: "title",
              child: Text(
                "Contact Me",
                style: MediaQuery.of(context).size.width >= 725
                    ? themeData.textTheme.headline1
                    : themeData.textTheme.headline2,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            // Linktree
            //          gh
            //      li      tw
            //   ig     yt      sp
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinktreeIconButton(
                  linkurl: kGitHubLink,
                  linkicon: Icon(LinktreeIcons.github),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinktreeIconButton(
                      linkurl: kLinkedInLink,
                      linkicon: Icon(LinktreeIcons.linkedin_in),
                    ),
                    LinktreeIconButton(
                      linkurl: kTwitterLink,
                      linkicon: Icon(LinktreeIcons.twitter),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinktreeIconButton(
                      linkurl: kIGLink,
                      linkicon: Icon(LinktreeIcons.instagram),
                    ),
                    LinktreeIconButton(
                      linkurl: kYTLink,
                      linkicon: Icon(LinktreeIcons.youtube),
                    ),
                    LinktreeIconButton(
                      linkurl: kSpotifyLink,
                      linkicon: Icon(LinktreeIcons.spotify),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Contact me Column Card
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Any Enquiries",
                        style: themeData.textTheme.headline2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Contact me at isaac.marcus.lam@gmail.com or connect with me below!",
                        style: themeData.textTheme.headline4,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      // Connect button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // launch default mail app to send message
                            launch(Uri(
                              scheme: 'mailto',
                              path: 'isaac.marcus.lam@gmail.com',
                              query: encodeQueryParameters(<String, String>{
                                'subject': "Connecting via Flutter"
                              }),
                            ).toString());
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Connect",
                            style: themeData.textTheme.button,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
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
