import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterloginsingup/screens/login_singup.dart';
import 'package:flutterloginsingup/widgets/text_form.dart';

class FormFields extends StatelessWidget {
  final double _height;
  AuthMode _authMode;

  FormFields(this._height, this._authMode);

  TextEditingController firstNmaeController = TextEditingController();
  TextEditingController lastNmaeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: _height,
      child: Form(
        key: _key,
        child: ListView(
          children: <Widget>[
            if (_authMode == AuthMode.singUp)
              CustomTextForm('First Name', firstNmaeController,
                  TextInputType.text, Icons.people, false),
            if (_authMode == AuthMode.singUp)
              SizedBox(
                height: 5,
              ),
            if (_authMode == AuthMode.singUp)
              CustomTextForm('Last Name', lastNmaeController,
                  TextInputType.text, Icons.people, false),
            if (_authMode == AuthMode.singUp)
              SizedBox(
                height: 5,
              ),
            CustomTextForm('Email', emailController, TextInputType.emailAddress,
                Icons.email, false),
            SizedBox(
              height: _authMode == AuthMode.singUp ? 5 : 20,
            ),
            CustomTextForm('Password', passwordController,
                TextInputType.emailAddress, Icons.lock, true),
            if (_authMode == AuthMode.singUp)
              SizedBox(
                height: 5,
              ),
            if (_authMode == AuthMode.singUp)
              CustomTextForm('Confirm Password', confirmPasswordController,
                  TextInputType.emailAddress, Icons.lock, true),
          ],
        ),
      ),
    );
  }
}
