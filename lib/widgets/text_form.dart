import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscureText;

  CustomTextForm(this.hint, this.textEditingController, this.keyboardType,
      this.icon, this.obscureText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 10,
        color: Theme.of(context).primaryColor,
        child: TextFormField(
          obscureText: obscureText,
          cursorColor: Colors.purple,
          keyboardType: keyboardType,
          controller: textEditingController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
              hintText: hint,
              prefixIcon: Icon(
                icon,
                color: Colors.purple,
              )),
        ),
      ),
    );
  }
}
