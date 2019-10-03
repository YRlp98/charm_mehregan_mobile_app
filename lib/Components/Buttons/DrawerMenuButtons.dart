import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class DrawerMenuButtonsCreate extends StatelessWidget {
  final String buttonTitle;
  final String screenRoutes;
  bool isCurrentScreen = false;

  DrawerMenuButtonsCreate(
      {this.buttonTitle, this.isCurrentScreen, this.screenRoutes});
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Text(
        buttonTitle,
        style: TextStyle(
            fontFamily: 'Vazir',
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: lightBrownColor),
      ),
      onTap: () {
        isCurrentScreen = true;
        Navigator.of(context).pushReplacementNamed(screenRoutes);
      },
    );
  }
}

class DrawerScreenButtonsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        new DrawerMenuButtonsCreate(
            buttonTitle: 'محصولات',
            isCurrentScreen: false,
            screenRoutes: '/ProductsScreen'),
        new SizedBox(height: 15),
        new DrawerMenuButtonsCreate(
            buttonTitle: 'درباره ما',
            isCurrentScreen: false,
            screenRoutes: '/ProductsScreen'),
        new SizedBox(height: 15),
        new DrawerMenuButtonsCreate(
            buttonTitle: 'تماس با ما',
            isCurrentScreen: false,
            screenRoutes: '/ProductsScreen')
      ],
    );
  }
}
