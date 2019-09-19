import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:charm_mehregan/SplashScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Prevent device orientation changes
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

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
