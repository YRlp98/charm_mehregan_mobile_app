import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';

class LoginScreenTextFiledsCreate extends StatelessWidget {
  // TODO: Make it extends KFDrawer
  double fontSize14 = 1.80 * SizeConfig.textMultiplier;
  double verticalPaddingBy10 = 1.29 * SizeConfig.heightMultiplier;
  double horizantaPaddingBy10 = 2.43 * SizeConfig.heightMultiplier;

  final String labelText;
  final bool obscure;

  LoginScreenTextFiledsCreate({this.labelText, this.obscure});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 1.29 * SizeConfig.heightMultiplier), // 10
      child: new TextFormField(
        textDirection: TextDirection.ltr,
        obscureText: obscure,

//        TextField style
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: verticalPaddingBy10,
              horizontal: horizantaPaddingBy10), // all: 10
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: lightBrownColor),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: lightBrownColor)),
          labelText: labelText,
          labelStyle: TextStyle(
            color: lightBrownColor,
            fontFamily: 'vazir',
            fontWeight: FontWeight.normal,
            fontSize: fontSize14, // 14
          ),
        ),

//      Input text style
        style: TextStyle(
            fontFamily: "vazir",
            fontWeight: FontWeight.normal,
            fontSize: fontSize14, // 14
            color: lightBrownColor),
      ),
    );
  }
}

class LoginScreenTextFiledsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Form(
              child: new Column(
            children: <Widget>[
              // Email
              new LoginScreenTextFiledsCreate(
                labelText: 'آدرس ایمیل',
                obscure: false,
              ),

              // Password
              new LoginScreenTextFiledsCreate(
                labelText: 'رمز عبور',
                obscure: true,
              )
            ],
          ))
        ],
      ),
    );
  }
}
