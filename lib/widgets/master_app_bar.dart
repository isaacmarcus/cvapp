import 'package:cvapp/constants.dart';
import 'package:cvapp/widgets/menu_drawer.dart';
import 'package:cvapp/widgets/full_screen_appbar_row.dart';
import 'package:cvapp/widgets/title_text_button.dart';
import 'package:flutter/material.dart';

class MasterAppBar extends StatefulWidget {
  AnimationController drawerSlideController;

  MasterAppBar({required this.drawerSlideController});

  @override
  _MasterAppBarState createState() => _MasterAppBarState();
}

class _MasterAppBarState extends State<MasterAppBar>
    with SingleTickerProviderStateMixin {
  bool _isDrawerOpen() {
    return widget.drawerSlideController.value == 1.0;
  }

  bool _isDrawerOpening() {
    return widget.drawerSlideController.status == AnimationStatus.forward;
  }

  void _toggleDrawer() {
    setState(() {
      if (_isDrawerOpen() || _isDrawerOpening()) {
        widget.drawerSlideController.reverse();
      } else {
        widget.drawerSlideController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTextButton(
                buttonText: "Isaac Marcus",
                pressedFunction: () {
                  print("button pressed");
                },
              ),
              // Check if screen size is smaller than 725 logical pixels
              MediaQuery.of(context).size.width >= 725
                  ? FullScreenABarRow()
                  // If smaller than 725 logical pixels input code here
                  : AnimatedBuilder(
                      animation: widget.drawerSlideController,
                      builder: (context, child) {
                        return IconButton(
                          onPressed: _toggleDrawer,
                          icon: _isDrawerOpen() || _isDrawerOpening()
                              ? const Icon(
                                  Icons.clear,
                                  color: Color(0xFFeeeeee),
                                )
                              : const Icon(
                                  Icons.menu,
                                  color: Color(0xFFeeeeee),
                                ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
