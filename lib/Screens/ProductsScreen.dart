import 'package:charm_mehregan/Components/Buttons/FilterButtons.dart';
import 'package:charm_mehregan/Components/Cards/ProductsCards.dart';
import 'package:charm_mehregan/Models/ProductsModel.dart';
import 'package:charm_mehregan/Services/ProductsService.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class ProductsScreen extends KFDrawerContent {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<ProductsScreen> {
  double horizantalPaddingBy20 = 4.86 * SizeConfig.imageSizeMultiplier; // 20
  double verticalPaddingBy20 = 2.58 * SizeConfig.heightMultiplier; // 20

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,

      // !Appbar
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        iconTheme: new IconThemeData(color: darkBrownColor),
        leading: new IconButton(
          // Menu icon
          icon: Icon(
            Icons.menu,
          ),
          onPressed: widget.onMenuPressed,
        ),

        // Title
        title: new Text(
          'محصولات',
          style: TextStyle(
              fontFamily: 'Vazir',
              fontWeight: FontWeight.bold,
              fontSize: 2 * SizeConfig.textMultiplier,
              color: darkBrownColor),
        ),

        // Search Icon
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),

      // !Body
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizantalPaddingBy20,
                vertical: verticalPaddingBy20),
            child: new FilterButtonsUse(),
          ),

          // !Products Cards
          new FutureBuilder<ProductsModel>(
            future: ProductsService.getProducts(),
            builder: (context, myData) {
              if (myData.connectionState == ConnectionState.done) {
                if (myData.hasData) {
                  ProductsModel productsModel = myData.data;
                  List<Data> productsList = productsModel.data;
                  return new GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(), // to make it scrollable
                      itemCount: productsList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return new ProductsCardsModel(
                          imageAddress: productsList[index].image,
                          title: productsList[index].title,
                        );
                      });
                } else {
                  return Text('There is no data show! :(');
                }
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
