import 'package:charm_mehregan/SplashScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'Theme/Colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charm Mehregan',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
//      home: SplashScreen(),
      initialRoute: '/SplashScreen',
      routes: {
        '/': (context) => new Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),
        '/LoginScreen': (context) => new Directionality(
            textDirection: TextDirection.rtl, child: LoginScreen()),
        '/SplashScreen': (context) => new SplashScreen()
      },
    );
  }
}
