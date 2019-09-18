import 'package:charm_mehregan/SplashScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'Theme/Colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charm Mehregan',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: new Directionality(
          textDirection: TextDirection.rtl, child: SplashScreen()),

//      Routes
//      routes: {'/': (context) => new SplashScreen()},
    );
  }
}
