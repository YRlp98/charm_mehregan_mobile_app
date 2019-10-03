import 'package:charm_mehregan/Screens/ProductsScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

import 'Components/Buttons/DrawerMenuButtons.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isCollapsed = false;
  var screenHeight, screenWidth;
  final Duration duration = const Duration(milliseconds: 3000);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return new Scaffold(
      backgroundColor: darkBrownColor,
      body: Stack(
        children: <Widget>[drawerMenu(context), screen(context)],
      ),
    );
  }

  Widget drawerMenu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: new Align(
          alignment: Alignment.centerLeft, child: new DrawerScreenButtonsUse()),
    );
  }

  Widget screen(context) {
    return new AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.1 * screenHeight,
      bottom: isCollapsed ? 0 : 0.1 * screenHeight,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: new Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          elevation: 8,
          child: new GestureDetector(
            child: new ProductsScreen(),
            onTap: () {
              setState(() {
                isCollapsed = isCollapsed;
              });
              Navigator.of(context).pushReplacementNamed("/ProductsScreen");
            },
          )),
    );
  }
}
