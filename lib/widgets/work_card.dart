import 'package:cvapp/constants.dart';
import 'package:flutter/material.dart';

class WorkCard extends StatefulWidget {
  final titleImage;
  final title;
  final description;
  final link;

  WorkCard({
    this.titleImage,
    this.title,
    this.description,
    this.link,
  });

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    bool isHover = false;
    double cardPadding = 50;
    double hoverPadding = 15;

    // TODO: figure out why not animating
    return AnimatedContainer(
      width: screenWidth * 0.95,
      height: screenWidth * 0.95 * 0.6,
      duration: Duration(milliseconds: 500),
      padding: EdgeInsets.all((isHover == true) ? hoverPadding : cardPadding),
      child: InkWell(
        onTap: () {},
        onHover: (val) {
          setState(() {
            isHover = val;
            print(isHover);
          });
        },
        child: Card(
          elevation: 5,
          child: Stack(children: [
            Container(
              // width: screenWidth >= 725 ? 250 : screenHeight * 0.25,
              // height: screenWidth >= 725 ? 250 : screenHeight * 0.25,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.titleImage),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title of the card
                      Text(
                        widget.title,
                        style: themeData.textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 40,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
