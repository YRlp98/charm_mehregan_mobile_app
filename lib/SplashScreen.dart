import 'dart:async';

import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }

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
