import 'dart:async';

import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() async {
    Navigator.of(context).pushReplacementNamed("/KFDrawer");
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
        child: new Container(
          // padding: const EdgeInsets.only(right: 107, left: 107),
          height: 8.78 * SizeConfig.heightMultiplier,
          width: 39.17 * SizeConfig.imageSizeMultiplier,
          child: new Image.asset('assets/images/charm_mehregan_logo.png'),
        ),
      ),
    );
  }
}
