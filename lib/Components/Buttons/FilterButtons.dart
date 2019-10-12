import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class FilterButtonsCreat extends StatefulWidget {
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
  _FilterButtonsCreatState createState() => _FilterButtonsCreatState();
}

class _FilterButtonsCreatState extends State<FilterButtonsCreat> {
  double horizantalPaddingBy10 = 2.43 * SizeConfig.imageSizeMultiplier;

  double verticalPaddingBy10 = 1.29 * SizeConfig.heightMultiplier;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizantalPaddingBy10, vertical: verticalPaddingBy10),
        height: 5.16 * SizeConfig.heightMultiplier, //40
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
                color: widget.filterCardColor, offset: new Offset(0, 3), blurRadius: 5)
          ],
          color: widget.filterCardColor,
        ),
        child: new Row(
          children: <Widget>[
            new Text(
              widget.filterCardText,
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 1.67 * SizeConfig.textMultiplier, //13
                  color: Colors.white),
            ),
            new SizedBox(width: 1.94 * SizeConfig.imageSizeMultiplier), //8
            new Container(
              height: 2.58 * SizeConfig.heightMultiplier, //20
              width: 4.86 * SizeConfig.imageSizeMultiplier, //20
              child: widget.filterCardImage,
            ),
          ],
        ),
      ),
      onTap: () {
        widget.filterCardOnPressd;
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
