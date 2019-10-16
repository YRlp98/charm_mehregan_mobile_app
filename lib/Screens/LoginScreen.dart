import 'package:charm_mehregan/Components/TextFileds/LoginScreenTextFields.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:charm_mehregan/WebView/WebViewContainer.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  double height10 = 1.29 * SizeConfig.heightMultiplier;
  double fontSize14 = 1.80 * SizeConfig.textMultiplier;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return new Scaffold(
        body: new SingleChildScrollView(
      child: new Container(
        height: screenSize.height,
        color: darkBrownColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
//          Logo
            new Container(
                padding: EdgeInsets.only(
                    top: 7.10 * SizeConfig.heightMultiplier), // 55
                width: 39.17 * SizeConfig.imageSizeMultiplier, // 161
                child:
                    new Image.asset('assets/images/charm_mehregan_logo.png')),
//          Welcome message
            new Padding(
                padding: EdgeInsets.only(
                    top: 15.63 * SizeConfig.heightMultiplier,
                    right: 9.00 * SizeConfig.imageSizeMultiplier,
                    left: 9.00 *
                        SizeConfig
                            .imageSizeMultiplier), // top: 121, right: 37, left: 37
                child: new Column(
                  children: <Widget>[
                    new Align(
                        alignment: Alignment.topRight,
                        child: new Text(
                          'خوش آمدید!',
                          style: TextStyle(
                              fontFamily: 'vazir',
                              fontWeight: FontWeight.bold,
                              fontSize: 2.19 * SizeConfig.textMultiplier, // 17
                              color: lightBrownColor),
                        )),
                    new SizedBox(
                        height: 0.12 * SizeConfig.heightMultiplier), // 1
                    new Text(
                      'لطفا آدرس ایمیل و رمز عبور اکانت خود را وارد کنید و سپس روی دکمه ورود کلیک کنید',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontWeight: FontWeight.normal,
                          fontSize: 1.67 * SizeConfig.textMultiplier, // 13
                          color: lightBrownColor),
                    )
                  ],
                )),

//              Text Fields
            new SizedBox(height: height10), // 10
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            9.00 * SizeConfig.imageSizeMultiplier), // 37
                    child: new LoginScreenTextFiledsUse()),

//              Login Button
                new SizedBox(height: height10), // 10
                new Container(
                    margin: EdgeInsets.symmetric(
                        horizontal:
                            9.00 * SizeConfig.imageSizeMultiplier), // 37
                    child: new SizedBox(
                        width: double.infinity,
                        child: new RaisedButton(
                          disabledColor: lightBrownColor,
                          color: lightBrownColor,
                          splashColor: darkBrownColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.70 * SizeConfig.imageSizeMultiplier,
                              vertical:
                                  0.90 * SizeConfig.heightMultiplier), // 7
                          child: new Text(
                            'ورود',
                            style: TextStyle(
                              fontFamily: 'vazir',
                              fontSize: fontSize14, // 14
                              fontWeight: FontWeight.bold,
                              color: darkBrownColor,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/KFDrawer');
                          },
                        ))),

//              Forget Password
                new SizedBox(height: height10), // 10
                new FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewContainer(
                                  'https://google.com', 'فراموشی رمز عبور')));
                    },
                    child: new Text('فراموشی رمز عبور',
                        style: TextStyle(
                            fontFamily: 'vazir',
                            fontWeight: FontWeight.normal,
                            fontSize: fontSize14, // 14
                            color: lightBrownColor))),

//              Create account
                new FlatButton(
                    padding: EdgeInsets.only(bottom: height10), // 10
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewContainer(
                                  'https://google.com', 'ساخت حساب کاربری')));
                    },
                    child: new RichText(
                        text: new TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'حساب کاربری ندارید؟',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontWeight: FontWeight.normal,
                                fontSize: fontSize14, // 14
                                color: lightBrownColor)),
                        new TextSpan(
                            text: ' یکی بسازید',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize14, // 14
                                color: lightBrownColor)),
                      ],
                    ))),
              ],
            ),

//          Bottom Wave
            new Container(
                width: screenSize.width,
                height: 10.37 * SizeConfig.heightMultiplier,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image:
                            new AssetImage('assets/images/login_page_wave.png'),
                        fit: BoxFit.fitWidth))),
          ],
        ),
      ),
    ));
  }
}
