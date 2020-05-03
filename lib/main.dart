import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/splach_screen.dart';
import './screens/login_singup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xffeaac9d)),
      routes: {
        '/': (BuildContext context) => SplashScreen(),
        '/main': (BuildContext context) => LogInSingUpPage()
      },
    );
  }
}
