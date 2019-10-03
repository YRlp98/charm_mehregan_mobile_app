import 'package:charm_mehregan/Components/Buttons/DrawerMenuButtons.dart';
import 'package:charm_mehregan/Screens/ProductsScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ProductsScrenDrawerMenu extends StatefulWidget {
  @override
  _ProductsScrenDrawerMenuState createState() =>
      _ProductsScrenDrawerMenuState();
}

class _ProductsScrenDrawerMenuState extends State<ProductsScrenDrawerMenu> {
  bool isCollapsed = false;
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
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //    Logo
        new Container(
          child: new Padding(
            padding: const EdgeInsets.only(top: 55, right: 107, left: 107),
            child: new Image.asset('assets/images/charm_mehregan_logo.png'),
          ),
        ),

//    Buttons
        new Padding(
          padding: const EdgeInsets.only(left: 50),
          child: new Align(
              alignment: Alignment.centerLeft,
              child: new DrawerScreenButtonsUse()),
        ),

//    Copyright and app version
        new Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: new RichText(
              text: new TextSpan(
            children: <TextSpan>[
              new TextSpan(
                  text: 'نسخه 0.0.1 ',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: lightBrownColor)),
              new TextSpan(
                  text: '| توسعه داده شده توسط زنیاک',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: lightBrownColor)),
            ],
          )),
        )
      ],
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
                isCollapsed = !isCollapsed;
              });
              // Navigator.of(context).pushReplacementNamed("/ProductsScreen");
            },
          )),
    );
  }
}
