import 'package:charm_mehregan/Screens/ProductsScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isCollapsed = true;
  var screenHeight, screenWidth;
  final Duration duration = const Duration(milliseconds: 300);

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
        alignment: Alignment.centerLeft,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(
              'محصولات',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            new SizedBox(height: 15),
            new Text(
              'درباره ما',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            new SizedBox(height: 15),
            new Text(
              'تماس با ما',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            )
          ],
        ),
      ),
    );
  }

  Widget screen(context) {
    return new AnimatedPositioned(
      duration: duration,
      top: 0.1 * screenHeight,
      bottom: 0.1 * screenHeight,
      left: 0.6 * screenWidth,
      right: -0.4 * screenWidth,
      child: new Material(
          elevation: 8,
          child: new GestureDetector(
            child: new ProductsScreen(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductsScreen()));
            },
          )),
    );
  }
}
