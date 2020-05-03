import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  final double _raduis;

  Logo(this._raduis);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
          radius:_raduis,
          backgroundColor: Theme.of(context).primaryColor,
          child: Image.asset('assets/images/login.png')),
    );
  }
}
