import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class TypeButtonsModel extends StatelessWidget {
  final int typeId;
  final String typeLable;

  TypeButtonsModel({@required this.typeId, @required this.typeLable});

  @override
  Widget build(BuildContext context) {
    double horizantalPaddingBy10 = 2.43 * SizeConfig.imageSizeMultiplier;
    double verticalPaddingBy10 = 1.29 * SizeConfig.heightMultiplier;

    return new GestureDetector(
      onTap: () {
        print('Type tap');
      },
      child: new Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizantalPaddingBy10,
            vertical: verticalPaddingBy10,
          ),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(10),
            boxShadow: [
              new BoxShadow(
                color: darkBrownColor,
                offset: new Offset(0, 3),
                blurRadius: 5,
              )
            ],
            color: darkBrownColor,
          ),
          child: new Center(
            child: new Text(
              typeLable,
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 1.67 * SizeConfig.textMultiplier, // 13
                  color: Colors.white),
            ),
          )),
    );
  }
}
