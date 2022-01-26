import 'package:cvapp/widgets/work_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class WorkSection extends StatefulWidget {
  final key;

  WorkSection({required this.key});

  @override
  State<WorkSection> createState() => _WorkSectionState();
}

class _WorkSectionState extends State<WorkSection> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.zero,
      key: widget.key,
      width: screenWidth,
      // height: MediaQuery.of(context).size.height - kAppBarHeightDoubleL,
      child: Center(
        child: Padding(
          padding: screenWidth >= 725 ? kMasterPaddingL : kMasterPaddingS,
          child: Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "work-title",
                  child: Text(
                    "Work",
                    style: screenWidth >= 725
                        ? themeData.textTheme.headline1
                        : themeData.textTheme.headline2,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: screenWidth * 0.95,
                  margin: EdgeInsets.zero,
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    children: <Widget>[
                      // WorkCard(
                      //   title: "",
                      //   titleImage: 'assets/images/shooshoe_ss.PNG',
                      //   link: "https://github.com/isaacmarcus/ShooShoeApp",
                      //   description: "",
                      // ),
                      WorkCard(
                        title: "Moire Playground",
                        titleImage: 'assets/images/moire_playground_ss.PNG',
                        link: "https://github.com/isaacmarcus/MoirePlayground",
                        description:
                            "An exploration into the design of 'MOIRE'",
                      ),
                      // WorkCard(
                      //   title: "LinkTree Github Pages",
                      //   titleImage: 'assets/images/lnktree_ss.PNG',
                      //   link: "https://github.com/isaacmarcus/lnkin",
                      //   description:
                      //       "Creating a simple HTML Clone of the popular LinkTree website",
                      // ),
                    ],
                  ),
                ),
                // WorkCard(
                //   title: "",
                //   titleImage: 'assets/images/shooshoe_ss.PNG',
                //   link: "https://github.com/isaacmarcus/ShooShoeApp",
                //   description: "",
                // ),
                WorkCard(
                  title: "Moire Playground",
                  titleImage: 'assets/images/moire_playground_ss.PNG',
                  link: "https://github.com/isaacmarcus/MoirePlayground",
                  description: "An exploration into the design of 'MOIRE'",
                ),
                // WorkCard(
                //   title: "LinkTree Github Pages",
                //   titleImage: 'assets/images/lnktree_ss.PNG',
                //   link: "https://github.com/isaacmarcus/lnkin",
                //   description:
                //       "Creating a simple HTML Clone of the popular LinkTree website",
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
