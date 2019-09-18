import 'package:charm_mehregan/Components/InputField.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Form(
              child: new Column(
            children: <Widget>[
              new InputField(
                labelText: 'آدرس ایمیل',
                obscure: false,
              ),
              new InputField(
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
