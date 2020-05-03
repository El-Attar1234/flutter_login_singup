import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialIconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/googlelogo.png'),
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/fblogo.jpg'),
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/twitterlogo.jpg'),
          ),
        ],
      ),
    );
  }
}
