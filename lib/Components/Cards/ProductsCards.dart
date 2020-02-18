import 'package:charm_mehregan/Models/ProductsModel.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class ProductsCardsModel extends StatelessWidget {
  final ProductsModel products;

  // https://5.imimg.com/data5/LF/PW/MY-42404537/ladies-fashion-leather-shoes-500x500.jpg

  ProductsCardsModel({@required this.products});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return new Container(
      padding: EdgeInsets.symmetric(
          vertical: 1.29 * SizeConfig.heightMultiplier, // 10
          horizontal: 1.21 * SizeConfig.imageSizeMultiplier), // 5
      child: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          // GridView image
          new ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: 
            // CachedNetworkImage(
            //   height: screenSize.height,
            //   width: screenSize.width,
            //   imageUrl: products.image,
            //   placeholder: (context, url) => new Container(
            //     height: 3.10 * SizeConfig.heightMultiplier,
            //     width: 3.10 * SizeConfig.imageSizeMultiplier,
            //     child: new Image.asset('assets/icons/loading_blocks.gif'),
            //   ),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            //   fit: BoxFit.cover,
            // ),
            new Image.asset('assets/icons/loading_blocks.gif'),
          ),

          // GridView darkBrown layer
          new Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 3.16 * SizeConfig.imageSizeMultiplier), // 13
              alignment: Alignment.center,
              height: 5.16 * SizeConfig.heightMultiplier, // 40
              decoration: new BoxDecoration(
                  color: darkBrownColor.withOpacity(0.8),
                  borderRadius: new BorderRadius.only(
                    bottomRight: new Radius.circular(10),
                    bottomLeft: new Radius.circular(10),
                  )),

              // GridView Title
              child: new RichText(
                maxLines: 1,
                text: new TextSpan(
                  text: products.title,
                  style: TextStyle(
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
