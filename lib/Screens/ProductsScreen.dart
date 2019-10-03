import 'package:charm_mehregan/Components/Cards/FilterButtons.dart';
import 'package:charm_mehregan/DrawerMenu.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isCollapsed = true;

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
              setState(() {
                isCollapsed = !isCollapsed;
              });
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DrawerMenu()));
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
            // FilterButtons
            new Padding(
              padding: const EdgeInsets.all(20),
              child: new FilterButtonsUse(),
            ),

            // SlideShow
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 5),
              child: new Directionality(
                textDirection: TextDirection.rtl,
                child: new Text(
                  'محصولات ویژه',
                  style: TextStyle(
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: new Container(
                height: 180,
                color: Colors.green,
              ),
            ),
          ],
        ));
  }
}
