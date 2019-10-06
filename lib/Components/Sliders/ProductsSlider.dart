import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductsSliderCreate extends StatelessWidget {
  final String productImage;
  final String productRout;

// https://www.paperhigh.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/l/o/low_res_large_vintage_leather_stachel_llptl_lifestyle.jpg
// https://ruitertassen.com/wp-content/uploads/2018/04/brown-leather-laptop-backpack-satchel-for-men-732837.jpg
// https://ruitertassen.com/wp-content/uploads/2018/04/durable-vegetable-tanned-brown-leather-satchel-bag-732337.jpg
// https://ruitertassen.com/wp-content/uploads/2018/04/large-mens-leather-backpack-satchel-732237.jpg

  ProductsSliderCreate({this.productImage, this.productRout});

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        padding: const EdgeInsets.only(top: 8),
        height: 180,
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(10),
            child: new Carousel(
              boxFit: BoxFit.fill,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 3000),
              autoplayDuration: Duration(seconds: 5),
              dotSize: 5,
              dotSpacing: 10,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomRight,
              moveIndicatorFromBottom: 100,
              images: [
                new GestureDetector(
                  child: new CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://www.paperhigh.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/l/o/low_res_large_vintage_leather_stachel_llptl_lifestyle.jpg',
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new GestureDetector(
                  child: new CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://ruitertassen.com/wp-content/uploads/2018/04/brown-leather-laptop-backpack-satchel-for-men-732837.jpg',
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new GestureDetector(
                  child: new CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://ruitertassen.com/wp-content/uploads/2018/04/durable-vegetable-tanned-brown-leather-satchel-bag-732337.jpg',
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new GestureDetector(
                  child: new CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://ruitertassen.com/wp-content/uploads/2018/04/large-mens-leather-backpack-satchel-732237.jpg',
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
              ],
            )),
      ),
    );
  }
}

// class ProductsSliderUse extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new ProductsSliderCreate(
//       productImage:
//           'https://www.paperhigh.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/l/o/low_res_large_vintage_leather_stachel_llptl_lifestyle.jpg',
//       // productRout: '/SplashScreen',
//     );
//   }
// }
