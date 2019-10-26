import 'package:charm_mehregan/Components/Buttons/FilterButtons.dart';
import 'package:charm_mehregan/Components/Buttons/TypeButtons.dart';
import 'package:charm_mehregan/Components/Cards/ProductsCards.dart';
import 'package:charm_mehregan/Components/Sliders/ProductsSlider.dart';
import 'package:charm_mehregan/Models/ProductsModel.dart';
import 'package:charm_mehregan/Models/TypesModel.dart';
import 'package:charm_mehregan/Services/ProductsService.dart';
import 'package:charm_mehregan/Services/TypesService.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kf_drawer/kf_drawer.dart';

class ProductsScreen extends KFDrawerContent {
  ProductsScreen({Key key});
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with AutomaticKeepAliveClientMixin<ProductsScreen> {
// To keep products state alive
  @override
  bool get wantKeepAlive => true;

  double horizantalPaddingBy20 = 4.86 * SizeConfig.imageSizeMultiplier;
  double verticalPaddingBy20 = 2.58 * SizeConfig.heightMultiplier;

  ScrollController _scrollController = new ScrollController();

//! TODO: Get Data
  int _currentPage = 1;
  bool _isLoading = true;

  List<ProductsModel> _products = [];
  List<TypesModel> _types = [];

  @override
  void initState() {
    super.initState();
    _getProducts();
    // _getTypes();

// Infinite listView
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;

      // if (maxScroll - currentScroll <= 200) {
      //   if (!_isLoading) {
      //     _getProducts(page: _currentPage + 1);
      //   }
      // }

      if (currentScroll == maxScroll) {
        if (!_isLoading) {
          _getProducts(page: _currentPage + 1);
        }
      }
    });
  }

  // Products
  _getProducts({int page = 1}) async {
    setState(() {
      _isLoading = true;
    });

    var response = await ProductsService.getProducts(page);

    // To check app is getting data or not
    print(response['products']);

    setState(() {
      _products.addAll(response['products']);
      _currentPage = response['current_page'];
      _isLoading = false;
    });
  }

  // Types
  _getTypes({int page = 1}) async {
    var typeResponse = await TypesService.getTypes(page);

    print(typeResponse['type']);

    setState(() {
      _types.addAll(typeResponse['type']);
    });
  }

//! Finish

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,

        // Appbar
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

        // Body
        body: new ListView(
          children: <Widget>[
            // FilterButtons
            new Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizantalPaddingBy20,
                  vertical: verticalPaddingBy20),
              child: new FilterButtonsUse(),
              // child: new ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: _types.length,
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (BuildContext context, int index) {
              //     return new TypeButtonsModel(type: _types[index]);
              //   },
              // ),
            ),

            // SlideShow
            new Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizantalPaddingBy20,
              ), //20
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new Text(
                      'محصولات ویژه',
                      style: TextStyle(
                          fontFamily: 'Vazir',
                          fontWeight: FontWeight.bold,
                          fontSize: 1.67 * SizeConfig.textMultiplier,
                          color: Colors.black),
                    ),
                  ),
                  new Center(child: new ProductsSliderCreate())
                ],
              ),
            ),

            new SizedBox(height: 2.59 * SizeConfig.heightMultiplier), // 20

            // Products
            new ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: horizantalPaddingBy20), // 20
                shrinkWrap: true,
                itemCount: _products.length,
                controller: _scrollController,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: _products.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return new ProductsCardsModel(products: _products[index]);
                    },
                  );
                })
          ],
        ));
  }
}
