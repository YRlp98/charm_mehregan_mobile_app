import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class FilterButtonsCreat extends StatelessWidget {
  final Image filterCardImage;
  final String filterCardText;
  final Color filterCardColor;
  final Action filterCardOnPressd;

  FilterButtonsCreat(
      {this.filterCardImage,
      this.filterCardText,
      this.filterCardColor,
      this.filterCardOnPressd});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        padding: const EdgeInsets.all(10),
        height: 40,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
                color: filterCardColor, offset: new Offset(0, 3), blurRadius: 5)
          ],
          color: filterCardColor,
        ),
        child: new Row(
          children: <Widget>[
            new Text(
              filterCardText,
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.white),
            ),
            new SizedBox(width: 8),
            new Container(
              height: 20,
              width: 20,
              child: filterCardImage,
            ),
          ],
        ),
      ),
      onTap: () {
        filterCardOnPressd;
      },
    );
  }
}

class FilterButtonsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Coats
        new FilterButtonsCreat(
          filterCardImage: new Image.asset('assets/icons/coats.png'),
          filterCardColor: orangeColor,
          filterCardText: 'کت‌ها',
          filterCardOnPressd: null,
        ),

        // Bags
        new FilterButtonsCreat(
          filterCardImage: new Image.asset('assets/icons/bags.png'),
          filterCardColor: greenColor,
          filterCardText: 'کیف‌ها',
          filterCardOnPressd: null,
        ),

        // Shoes
        new FilterButtonsCreat(
          filterCardImage: new Image.asset('assets/icons/shoes.png'),
          filterCardColor: blueColor,
          filterCardText: 'کفش‌ها',
          filterCardOnPressd: null,
        ),

        // All
        new FilterButtonsCreat(
          filterCardImage: new Image.asset('assets/icons/all.png'),
          filterCardColor: darkBrownColor,
          filterCardText: 'همه',
          filterCardOnPressd: null,
        ),
      ],
    ));
  }
}
