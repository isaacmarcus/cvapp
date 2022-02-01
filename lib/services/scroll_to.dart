import 'package:cvapp/screens/about_page.dart';
import 'package:cvapp/screens/contact_page.dart';
import 'package:cvapp/screens/landing_page.dart';
import 'package:cvapp/screens/work_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ScrollTo {
  final keyList;

  ScrollTo({this.keyList});

  scrollTo(sectionName) {
    int secIndex = 0;

    // switch case to determine section index
    switch (sectionName) {
      case LandingPage.id:
        {
          secIndex = 0;
        }
        break;
      case AboutPage.id:
        {
          secIndex = 1;
        }
        break;
      case WorkPage.id:
        {
          secIndex = 2;
        }
        break;
      case ContactPage.id:
        {
          secIndex = 3;
        }
        break;
    }

    // Function to scroll to indicated section
    Scrollable.ensureVisible(
      keyList[secIndex].currentContext,
      duration: kAnimationDuration,
    );
  }
}
