import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class ProductsCardsModel extends StatelessWidget {
  final String imageAddress;
  final String title;

  ProductsCardsModel({@required this.imageAddress, @required this.title});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('Tap');
      },
      child: new Container(
        padding: EdgeInsets.symmetric(
            vertical: 1.29 * SizeConfig.heightMultiplier, // 10
            horizontal: 1.21 * SizeConfig.imageSizeMultiplier), // 5
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // GridView image
            new ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    // imageAddress,
                    'https://5.imimg.com/data5/LF/PW/MY-42404537/ladies-fashion-leather-shoes-500x500.jpg'),
                placeholder: AssetImage('assets/icons/loading_blocks.gif'),
              ),
            ),

            // GridView darkBrown layer
            new Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.16 * SizeConfig.imageSizeMultiplier,
              ), // 13
              alignment: Alignment.center,
              height: 5.16 * SizeConfig.heightMultiplier, // 40
              decoration: new BoxDecoration(
                  color: darkBrownColor.withOpacity(0.8),
                  borderRadius: new BorderRadius.only(
                    bottomRight: new Radius.circular(10),
                    bottomLeft: new Radius.circular(10),
                  )),

              // GridView Title
              child: new Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: 'Vazir',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
