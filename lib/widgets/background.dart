import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String _image;

  Background(this._image);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Container(
        width: _mediaQuery.size.width,
        height: _mediaQuery.size.height - _mediaQuery.padding.top,
        child: Image.asset(
          _image,
          fit: BoxFit.cover,
        ));
  }
}
