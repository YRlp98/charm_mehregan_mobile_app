import 'package:charm_mehregan/Screens/AboutUsScreen.dart';
import 'package:charm_mehregan/Screens/ContactUsScreen.dart';
import 'package:charm_mehregan/Screens/ProductsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:charm_mehregan/Screens/SplashScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'Screens/LoginScreen.dart';

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
      initialRoute: '/SplashScreen',
      routes: {
        '/': (context) => new Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),
        '/LoginScreen': (context) => new Directionality(
            textDirection: TextDirection.rtl, child: LoginScreen()),
        '/ProductsScreen': (context) => new ProductsScreen(),
        '/AboutUsScreen': (context) => new AboutUsScreen(),
        '/ContactUsScreen': (context) => new ContactUsScreen(),
        '/SplashScreen': (context) => new SplashScreen()
      },
    );
  }
}
