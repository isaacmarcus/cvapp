import '../widgets/work_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class WorkSection extends StatefulWidget {
  final sectionKey;

  WorkSection({required this.sectionKey});

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
      key: widget.sectionKey,
      width: screenWidth,
      // height: MediaQuery.of(context).size.height - kAppBarHeightDoubleL,
      child: Center(
        child: Padding(
          padding: screenWidth >= 725 ? kMasterPaddingL : kMasterPaddingS,
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
                margin: EdgeInsets.zero,
                child: GridView.count(
                  childAspectRatio: 1.5,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  crossAxisCount: screenWidth >= 1080 ? 2 : 1,
                  children: <Widget>[
                    WorkCard(
                      titleImage: 'assets/images/shooshoe_ss.png',
                      link: "https://github.com/isaacmarcus/ShooShoeApp",
                      logo: 'assets/logos/android_logo.png',
                    ),
                    WorkCard(
                      title: "Moire Playground",
                      titleImage: 'assets/images/moire_playground_ss.PNG',
                      link: "https://github.com/isaacmarcus/MoirePlayground",
                      description: "An exploration into the design of 'MOIRE'",
                      logo: 'assets/logos/flutter_logo.png',
                    ),
                    WorkCard(
                      title: "LinkTree Github Pages",
                      titleImage: 'assets/images/lnktree_ss.png',
                      link: "https://github.com/isaacmarcus/lnkin",
                      description:
                          "Creating a HTML Clone of the popular LinkTree website",
                      logo: 'assets/logos/html_logo.png',
                      logo2: 'assets/logos/css_logo.png',
                    ),
                    WorkCard(
                      title: "DeTrack POD WebApp",
                      titleImage: 'assets/images/detrack_ss.png',
                      link: "https://github.com/isaacmarcus/DeTrack-POD-App",
                      description:
                          "A WebApp using APIs to download data from management system",
                      logo: 'assets/logos/flutter_logo.png',
                    ),
                    WorkCard(
                      title: "Flutter Portfolio WebApp",
                      titleImage: 'assets/images/cvapp_ss.png',
                      link: "https://github.com/isaacmarcus/cvapp",
                      description:
                          "A WebApp introducing me and showcasing my works",
                      logo: 'assets/logos/flutter_logo.png',
                    ),
                    WorkCard(
                      title: "DGP Invoice Merger",
                      titleImage: 'assets/images/dgpinv_ss.png',
                      link: "https://github.com/isaacmarcus/DGPInvoicing",
                      description:
                          "A Python Desktop App to automate merging of pdf invoices",
                      logo: 'assets/logos/python_logo.png',
                    ),
                  ],
                ),
              ),
              // WorkCard(
              //   title: "",
              //   titleImage: 'assets/images/shooshoe_ss.PNG',
              //   link: "https://github.com/isaacmarcus/ShooShoeApp",
              //   description: "",
              // ),
              // WorkCard(
              //   title: "Moire Playground",
              //   titleImage: 'assets/images/moire_playground_ss.PNG',
              //   link: "https://github.com/isaacmarcus/MoirePlayground",
              //   description: "An exploration into the design of 'MOIRE'",
              // ),
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
    );
  }
}
