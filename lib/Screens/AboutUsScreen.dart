import 'package:charm_mehregan/DrawerMenus/AboutUsScreenDrawerMenu.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,

        // Appbar
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          iconTheme: new IconThemeData(color: darkBrownColor),
          leading: new IconButton(
            // Menu icon
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutUsScrenDrawerMenu()));
            },
          ),

          // Title
          title: new Text(
            'درباره ما',
            style: TextStyle(
                fontFamily: 'Vazir',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: darkBrownColor),
          ),

          // Search Icon
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),

        // Body
        body: new ListView(
          children: <Widget>[new Text('درباره ما')],
        ));
  }
}
