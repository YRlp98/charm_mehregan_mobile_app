import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:flutter/material.dart';

class LoginScreenTextFiledsCreate extends StatelessWidget {
  final String labelText;
  final bool obscure;

  LoginScreenTextFiledsCreate({this.labelText, this.obscure});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(top: 10),
      child: new TextFormField(
        textDirection: TextDirection.ltr,
        obscureText: obscure,

//        TextField style
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
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
            fontSize: 14,
          ),
        ),

//      Input text style
        style: TextStyle(
            fontFamily: "vazir",
            fontWeight: FontWeight.normal,
            fontSize: 14,
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
