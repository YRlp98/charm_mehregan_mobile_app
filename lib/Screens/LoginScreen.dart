import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/WebView/WebViewContainer.dart';
import 'package:flutter/material.dart';

import 'package:charm_mehregan/Components/Form.dart';

class LoginScreen extends StatelessWidget {
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
                padding: const EdgeInsets.only(top: 55),
                width: 161,
                child:
                    new Image.asset('assets/images/charm_mehregan_logo.png')),
//          Welcome message
            new Padding(
                padding: const EdgeInsets.only(top: 121, right: 37, left: 37),
                child: new Column(
                  children: <Widget>[
                    new Align(
                        alignment: Alignment.topRight,
                        child: new Text(
                          'خوش آمدید!',
                          style: TextStyle(
                              fontFamily: 'vazir',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: lightBrownColor),
                        )),
                    new SizedBox(height: 1),
                    new Text(
                      'لطفا آدرس ایمیل و رمز عبور اکانت خود را وارد کنید و سپس روی دکمه ورود کلیک کنید',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: lightBrownColor),
                    )
                  ],
                )),

//              Text Fields
            new SizedBox(height: 10),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(right: 37, left: 37),
                    child: new FormContainer()),

//              Login Button
                new SizedBox(height: 10),
                new Container(
                    margin: const EdgeInsets.symmetric(horizontal: 37),
                    child: new SizedBox(
                        width: double.infinity,
                        child: new RaisedButton(
                          disabledColor: lightBrownColor,
                          color: lightBrownColor,
                          splashColor: darkBrownColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(7),
                          child: new Text(
                            'ورود',
                            style: TextStyle(
                              fontFamily: 'vazir',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: darkBrownColor,
                            ),
                          ),
                          onPressed: () {},
                        ))),

//              Forget Password
                new SizedBox(height: 10),
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
                            fontSize: 14,
                            color: lightBrownColor))),

//              Create account
                new SizedBox(height: 0),
                new FlatButton(
                    padding: const EdgeInsets.only(bottom: 10),
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
                                fontSize: 14,
                                color: lightBrownColor)),
                        new TextSpan(
                            text: ' یکی بسازید',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: lightBrownColor)),
                      ],
                    ))),
              ],
            ),

//          Bottom Wave
            new Container(
                width: screenSize.width,
                height: 80,
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
