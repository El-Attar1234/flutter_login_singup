import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterloginsingup/widgets/social_icon_row.dart';
import '../widgets/background.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main');
    });
  }

  Widget _horizontalLine(_width) {
    return Container(
      width: _width,
      color: Theme.of(context).primaryColor,
      height: 5,
    );
  }

  Widget _splashText(_width) {
    return Container(
      width: _width,
      child: FittedBox(
        child: Text(
          'Social LogIn',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: 'Brookline'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: <Widget>[
        Background('assets/images/background.jpg'),
        Container(
          width: MediaQuery.of(context).size.width,
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _horizontalLine(constraints.maxWidth * 0.25),
                    _splashText(constraints.maxWidth * 0.4),
                    _horizontalLine(constraints.maxWidth * 0.25),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                SocialIconRow(),
              ],
            );
          }),
        ),
      ]),
    ));
  }
}
