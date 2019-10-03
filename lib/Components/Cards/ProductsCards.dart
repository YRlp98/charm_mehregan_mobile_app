import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductsCardsCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            width: 170,
            height: 148,
            child: new CachedNetworkImage(
                imageUrl:
                    'https://5.imimg.com/data5/LF/PW/MY-42404537/ladies-fashion-leather-shoes-500x500.jpg',
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error)),
          )
        ],
      ),
    );
  }
}

class ProductsCardsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
