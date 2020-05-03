import 'package:flutter/material.dart';
import 'package:flutterloginsingup/screens/login_singup.dart';

class CustomButton extends StatelessWidget {
  AuthMode _authMode;

  CustomButton(this._authMode);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xffcc0e74),
                Color(0xff481380),
                Color(0xff7f78d2)
              ],
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            _authMode == AuthMode.logIn ? 'LOG IN' : 'SING Up',
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
            ),
          )),
    );
  }
}
