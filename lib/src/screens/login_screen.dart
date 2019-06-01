import 'package:flutter/material.dart';
import '../widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 10,),
        LoginForm(),
      ],
    );
  }
}