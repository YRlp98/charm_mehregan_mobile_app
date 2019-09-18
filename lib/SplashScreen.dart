import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: darkBrownColor,
      body: new Center(
        child: new Padding(
          padding: const EdgeInsets.only(right: 107, left: 107),
          child: new Image.asset('assets/images/charm_mehregan_logo.png'),
        ),
      ),
    );
  }
}
