import 'package:charm_mehregan/Models/TypesModel.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class TypeButtonsModel extends StatelessWidget {
  final TypesModel type;

  TypeButtonsModel({@required this.type});

  @override
  Widget build(BuildContext context) {
    double horizantalPaddingBy10 = 2.43 * SizeConfig.imageSizeMultiplier;
    double verticalPaddingBy10 = 1.29 * SizeConfig.heightMultiplier;

    @override
    Widget build(BuildContext context) {
      return new GestureDetector(
        child: new Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizantalPaddingBy10, vertical: verticalPaddingBy10),
          height: 5.16 * SizeConfig.heightMultiplier, // 40
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(10),
            boxShadow: [
              new BoxShadow(
                  color: darkBrownColor,
                  offset: new Offset(0, 3),
                  blurRadius: 5)
            ],
            color: darkBrownColor,
          ),
          child: new Row(
            children: <Widget>[
              // Type button lable
              new RichText(
                maxLines: 1,
                text: new TextSpan(
                  text: type.lable,
                  style: TextStyle(
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.normal,
                      fontSize: 1.67 * SizeConfig.textMultiplier, // 13
                      color: Colors.white),
                ),
              ),

              // Type button icon
              // new SizedBox(width: 1.94 * SizeConfig.imageSizeMultiplier), // 8
              // new Container(
              //   height: 2.58 * SizeConfig.heightMultiplier, // 20
              //   width: 4.86 * SizeConfig.imageSizeMultiplier, // 20
              //   child: widget.filterCardImage,
              // ),
            ],
          ),
        ),
        onTap: () {},
      );
    }
  }
}
