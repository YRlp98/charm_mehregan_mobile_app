import 'package:charm_mehregan/Models/Products.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductsCards extends StatelessWidget {
  final Products products;

  ProductsCards({@required this.products});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        decoration:
            new BoxDecoration(borderRadius: new BorderRadius.circular(10)),
        child: new Container(
          padding: EdgeInsets.symmetric(
              vertical: 1.29 * SizeConfig.heightMultiplier, // 10
              horizontal: 1.21 * SizeConfig.imageSizeMultiplier), // 5
          child: new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10)),
                height: 19.37 * SizeConfig.heightMultiplier, // 150
                //! TODO: Change width size to 170
                width: screenSize.width,
                child: CachedNetworkImage(
                  imageUrl: products.image,
                  placeholder: (context, url) => new Container(
                    height: 3.10 * SizeConfig.heightMultiplier,
                    width: 3.10 * SizeConfig.imageSizeMultiplier,
                    child: new Image.asset('assets/icons/loading_blocks.gif'),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
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
        )
        // new Stack(
        //   children: <Widget>[
        //     new Container(
        //       width: 170,
        //       height: 148,
        //       child: new CachedNetworkImage(
        //           imageUrl:
        //               'https://5.imimg.com/data5/LF/PW/MY-42404537/ladies-fashion-leather-shoes-500x500.jpg',
        //           placeholder: (context, url) => new CircularProgressIndicator(),
        //           errorWidget: (context, url, error) => new Icon(Icons.error)),
        //     )
        //   ],
        // ),
        );
  }
}
