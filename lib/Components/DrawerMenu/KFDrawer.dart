import 'package:charm_mehregan/Components/DrawerMenu/ClassBuilder.dart';
import 'package:charm_mehregan/Screens/AboutUsScreen.dart';
import 'package:charm_mehregan/Screens/ContactUsScreen.dart';
import 'package:charm_mehregan/Screens/ProductsScreen.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/WebView/WebViewContainer.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:kf_drawer/kf_drawer.dart' as prefix0;

class KFDrawer extends StatefulWidget {
  @override
  _KFDrawerState createState() => _KFDrawerState();
}

class _KFDrawerState extends State<KFDrawer> {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = new KFDrawerController(
        initialPage: ClassBuilder.fromString('ProductsScreen'),
        items: [
          // Products
          KFDrawerItem.initWithPage(
            text: new Text(
              'محصولات',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            page: ProductsScreen(),
          ),

          // AboutUs
          KFDrawerItem.initWithPage(
            text: new Text(
              'درباره ما',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            page: new AboutUsScreen(),
          ),

          // ContactUs
          KFDrawerItem.initWithPage(
            text: new Text(
              'تماس با ما',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            page: ContactUsScreen(),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: darkBrownColor,
        body: new prefix0.KFDrawer(
          controller: _drawerController,
          header: new Align(
            alignment: Alignment.centerLeft,
            child: new Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: 161,
              child: new Image.asset('assets/images/charm_mehregan_logo.png'),
              alignment: Alignment.centerLeft,
            ),
          ),
          footer: KFDrawerItem(
            icon: Icon(
              Icons.input,
              color: lightBrownColor,
            ),
            text: new Text(
              'پنل مدیریت',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lightBrownColor),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/LoginScreen');
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         fullscreenDialog: true,
              //         builder: (context) => WebViewContainer(
              //             'https://google.com', 'ساخت حساب کاربری')));
            },
          ),
        ));
  }
}
