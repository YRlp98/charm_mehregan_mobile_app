import 'package:charm_mehregan/Theme/SizeConfig.dart';
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
        padding: EdgeInsets.only(top: 1.03 * SizeConfig.heightMultiplier),
        height: 23.25 * SizeConfig.heightMultiplier,
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(10),
            child: new Carousel(
              boxFit: BoxFit.cover,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 3000),
              autoplayDuration: Duration(seconds: 5),
              dotSize: 0.64 * SizeConfig.heightMultiplier,
              dotSpacing: 10,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomRight,
              moveIndicatorFromBottom: 100,
              images: [
                new InkWell(
                  child: new Image.network(
                      'https://www.paperhigh.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/l/o/low_res_large_vintage_leather_stachel_llptl_lifestyle.jpg',
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : Container(
                            height: 3.10 * SizeConfig.heightMultiplier,
                            width: 3.10 * SizeConfig.imageSizeMultiplier,
                            child: new Image.asset(
                                'assets/icons/loading_blocks.gif'),
                          );
                  }),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new InkWell(
                  child: new Image.network(
                      'https://ruitertassen.com/wp-content/uploads/2018/04/brown-leather-laptop-backpack-satchel-for-men-732837.jpg',
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : Container(
                            height: 3.10 * SizeConfig.heightMultiplier,
                            width: 3.10 * SizeConfig.imageSizeMultiplier,
                            child: new Image.asset(
                                'assets/icons/loading_blocks.gif'),
                          );
                  }),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new InkWell(
                  child: new Image.network(
                      'https://ruitertassen.com/wp-content/uploads/2018/04/durable-vegetable-tanned-brown-leather-satchel-bag-732337.jpg',
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : Container(
                            height: 3.10 * SizeConfig.heightMultiplier,
                            width: 3.10 * SizeConfig.imageSizeMultiplier,
                            child: new Image.asset(
                                'assets/icons/loading_blocks.gif'),
                          );
                  }),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                ),
                new InkWell(
                  child: new Image.network(
                      'https://ruitertassen.com/wp-content/uploads/2018/04/large-mens-leather-backpack-satchel-732237.jpg',
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : Container(
                            height: 3.10 * SizeConfig.heightMultiplier,
                            width: 3.10 * SizeConfig.imageSizeMultiplier,
                            child: new Image.asset(
                                'assets/icons/loading_blocks.gif'),
                          );
                  }),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/LoginScreen');
                  },
                )
              ],
              // images: [
              //   new InkWell(
              //     child: new CachedNetworkImage(
              //       fit: BoxFit.cover,
              //       imageUrl:
              //           'https://www.paperhigh.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/l/o/low_res_large_vintage_leather_stachel_llptl_lifestyle.jpg',
              //       placeholder: (context, url) => new Container(
              //         height: 3.10 * SizeConfig.heightMultiplier,
              //         width: 3.10 * SizeConfig.imageSizeMultiplier,
              //         child: new Image.asset('assets/icons/loading_blocks.gif'),
              //       ),
              //       errorWidget: (context, url, error) => new Icon(Icons.error),
              //     ),
              //     onTap: () {
              //       Navigator.of(context).pushReplacementNamed('/LoginScreen');
              //     },
              //   ),
              //   new InkWell(
              //     child: new CachedNetworkImage(
              //       fit: BoxFit.cover,
              //       imageUrl:
              //           'https://ruitertassen.com/wp-content/uploads/2018/04/brown-leather-laptop-backpack-satchel-for-men-732837.jpg',
              //       placeholder: (context, url) => new Container(
              //         height: 3.10 * SizeConfig.heightMultiplier,
              //         width: 3.10 * SizeConfig.imageSizeMultiplier,
              //         child: new Image.asset('assets/icons/loading_blocks.gif'),
              //       ),
              //       errorWidget: (context, url, error) => new Icon(Icons.error),
              //     ),
              //     onTap: () {
              //       Navigator.of(context).pushReplacementNamed('/LoginScreen');
              //     },
              //   ),
              //   new InkWell(
              //     child: new CachedNetworkImage(
              //       fit: BoxFit.cover,
              //       imageUrl:
              //           'https://ruitertassen.com/wp-content/uploads/2018/04/durable-vegetable-tanned-brown-leather-satchel-bag-732337.jpg',
              //       placeholder: (context, url) => new Container(
              //         height: 3.10 * SizeConfig.heightMultiplier,
              //         width: 3.10 * SizeConfig.imageSizeMultiplier,
              //         child: new Image.asset('assets/icons/loading_blocks.gif'),
              //       ),
              //       errorWidget: (context, url, error) => new Icon(Icons.error),
              //     ),
              //     onTap: () {
              //       Navigator.of(context).pushReplacementNamed('/LoginScreen');
              //     },
              //   ),
              //   new InkWell(
              //     child: new CachedNetworkImage(
              //       fit: BoxFit.cover,
              //       imageUrl:
              //           'https://ruitertassen.com/wp-content/uploads/2018/04/large-mens-leather-backpack-satchel-732237.jpg',
              //       placeholder: (context, url) => new Container(
              //         height: 3.10 * SizeConfig.heightMultiplier,
              //         width: 3.10 * SizeConfig.imageSizeMultiplier,
              //         child: new Image.asset('assets/icons/loading_blocks.gif'),
              //       ),
              //       errorWidget: (context, url, error) => new Icon(Icons.error),
              //     ),
              //     onTap: () {
              //       Navigator.of(context).pushReplacementNamed('/LoginScreen');
              //     },
              //   ),
              // ],
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
