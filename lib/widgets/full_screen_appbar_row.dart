import '../widgets/title_text_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

/* --------------------------------------------------------------------------

Widget Title: Full Screen App Bar Links
Widget Description: Widget for handling links to pages in full screen/web vs
mobile screen resolutions. 

-----------------------------------------------------------------------------*/

class FullScreenABarRow extends StatelessWidget {
  // final List sections;
  // final ValueNotifier
  final keyList;

  FullScreenABarRow({
    this.keyList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: _buildListItems(context),
    );
  }

  List<Widget> _buildListItems(context) {
    final listItems = <Widget>[];
    for (var i = 0; i < kMenuTitles.length; ++i) {
      listItems.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: TitleTextButton(
            buttonText: kMenuTitles[i][0],
            selected: false,
            pressedFunction: () {
              Scrollable.ensureVisible(
                keyList[i + 1].currentContext,
                duration: kAnimationDuration,
              );
              // vvv for page changes rather than scroll to vvv
              // Navigator.pushReplacementNamed(context, kMenuTitles[i][1]);
            },
          ),
        ),
      );
    }
    return listItems;
  }
}
