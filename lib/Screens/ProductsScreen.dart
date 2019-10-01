import 'package:charm_mehregan/Components/Cards/FilterButtons.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    var filterButtonsUse = new FilterButtonsUse();
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
              // TODO:  Drawer menu
            },
          ),

          // Product Text
          title: new Text(
            'محصولات',
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
          children: <Widget>[
            new Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              child: new FilterButtonsUse(),
            )
          ],
        ));
  }
}
