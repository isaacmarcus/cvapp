import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCard extends StatefulWidget {
  final titleImage;
  final title;
  final description;
  final link;
  final logo;
  final logo2;

  WorkCard({
    required this.titleImage,
    this.title = '',
    this.description = '',
    required this.link,
    this.logo = '',
    this.logo2 = '',
  });

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // initialize anim controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      upperBound: 0.5,
    );
  }

  @override
  void dispose() {
    super.dispose();
    // dispose anim controller
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _largeCard();
  }

  Widget _largeCard() {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    double cardPaddingL = 50;
    double hoverPaddingL = 47;
    // to check if there is an empty title
    bool noTitle = widget.title == "";

    return AnimatedContainer(
      width: screenWidth * 0.95,
      height: screenWidth * 0.95 * 0.6,
      // width: double.infinity,
      // height: double.infinity,
      duration: Duration(milliseconds: 200),
      padding: screenWidth >= kScreenWidthM
          ? EdgeInsets.all((isHover == true) ? hoverPaddingL : cardPaddingL)
          : EdgeInsets.all((isHover == true) ? 0 : 5),
      child: InkWell(
        onTap: () {
          launch(widget.link);
        },
        onHover: (val) {
          setState(() {
            // hover for icon to rotate
            isHover ? _controller.reverse() : _controller.forward(from: 0.0);
            isHover = val; // change hover bool
          });
        },
        child: Card(
          elevation: 5,
          child: Stack(children: [
            // Image linked to the card widget
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.titleImage),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title of the card
                      Container(
                        padding: EdgeInsets.all(5),
                        color: noTitle == true
                            ? Colors.black.withOpacity(0)
                            : Colors.black.withOpacity(0.65),
                        child: Text(
                          widget.title,
                          style: themeData.textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Description of the card
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: noTitle == true
                              ? Colors.black.withOpacity(0)
                              : Colors.black.withOpacity(0.65),
                          child: Text(
                            widget.description,
                            maxLines: 4,
                            style: themeData.textTheme.caption,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.75,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.logo),
                              )),
                        ),
                      ),
                      Opacity(
                        opacity: 0.75,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.logo2),
                              )),
                        ),
                      ),
                      Spacer(),
                      // Arrow icon indicating to click
                      RotationTransition(
                        turns:
                            Tween(begin: 0.0, end: 0.25).animate(_controller),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 40,
                        ),
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
