import 'package:flutter/material.dart';
import 'package:flutterloginsingup/screens/login_singup.dart';

class WelcomeText extends StatelessWidget {
  final double _height;
  AuthMode _authMode;

  WelcomeText(this._height, this._authMode);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 15),
        height: _height,
        child: Text(
          _authMode == AuthMode.logIn
              ? "Sing in to your account"
              : 'Create a new account',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontFamily: 'Brookline'),
        ),
      ),
    );
  }
}
