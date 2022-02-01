import '../widgets/linktree_icons.dart';
import '../widgets/lnktree_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class ContactSection extends StatelessWidget {
  final key;

  ContactSection({required this.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      key: key,
      width: screenWidth,
      child: Center(
        child: Padding(
          padding: screenWidth >= 725 ? kMasterPaddingL : kMasterPaddingS,
          child: Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Hero(
                  tag: "contact-title",
                  child: Text(
                    "Contact Me",
                    style: screenWidth >= 725
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
                  height: 50,
                ),
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
                    // launch default mail app to send message
                    launch(Uri(
                      scheme: 'mailto',
                      path: 'isaac.marcus.lam@gmail.com',
                      // query: encodeQueryParameters(<String, String>{
                      //   'subject': "Connecting via Flutter"
                      // }),
                    ).toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Connect",
                      style: themeData.textTheme.button,
                    ),
                  ),
                )
                // Flexible(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Flexible(
                //         child: Text(
                //           "Any Enquiries",
                //           style: themeData.textTheme.headline2,
                //         ),
                //       ),
                //       SizedBox(
                //         height: 10,
                //       ),
                //       // Flexible(
                //       //   child: Text(
                //       //     "Contact me at isaac.marcus.lam@gmail.com or connect with me below!",
                //       //     style: themeData.textTheme.headline4,
                //       //     textAlign: TextAlign.center,
                //       //   ),
                //       // ),
                //       SizedBox(
                //         height: 45,
                //       ),
                //       // Connect button
                //       // ElevatedButton(
                //       //   onPressed: () {
                //       //     // launch default mail app to send message
                //       //     launch(Uri(
                //       //       scheme: 'mailto',
                //       //       path: 'isaac.marcus.lam@gmail.com',
                //       //       // query: encodeQueryParameters(<String, String>{
                //       //       //   'subject': "Connecting via Flutter"
                //       //       // }),
                //       //     ).toString());
                //       //   },
                //       //   child: Padding(
                //       //     padding: const EdgeInsets.all(15.0),
                //       //     child: Text(
                //       //       "Connect",
                //       //       style: themeData.textTheme.button,
                //       //     ),
                //       //   ),
                //       // )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
