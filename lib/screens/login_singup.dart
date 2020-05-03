import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/form.dart';
import '../widgets/social_icon_row.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';
import '../widgets/welcome_text.dart';

enum AuthMode { logIn, singUp }

class LogInSingUpPage extends StatefulWidget {
  @override
  _LogInSingUpPageState createState() => _LogInSingUpPageState();
}

class _LogInSingUpPageState extends State<LogInSingUpPage> {
  AuthMode _authMode = AuthMode.logIn;

  Widget _buildTextRow(String txt1, String txt2, Function func) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: FittedBox(
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              txt1,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 15,
              ),
            ),
            FlatButton(
              child: Text(
                txt2,
                style: TextStyle(
                    color: Color(0xffcc0e74),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  func();
                });
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Background('assets/images/background.jpg'),
            Container(
              height: _mediaQuery.size.height - _mediaQuery.padding.top,
              child: LayoutBuilder(
                builder: (ctx, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Logo(constraints.maxHeight * 0.09),
                      SizedBox(
                        height: _authMode == AuthMode.logIn ? 10 : 1,
                      ),
                      WelcomeText(constraints.maxHeight * 0.08, _authMode),
                      SizedBox(
                        height: _authMode == AuthMode.logIn ? 5 : 0,
                      ),
                      FormFields(
                          _authMode == AuthMode.logIn
                              ? constraints.maxHeight * 0.25
                              : constraints.maxHeight * 0.5,
                          _authMode),
                      if (_authMode == AuthMode.logIn)
                        _buildTextRow('Forget your password?', 'Recover', null),
                      SizedBox(
                        height: _authMode == AuthMode.logIn ? 10 : 5,
                      ),
                      CustomButton(_authMode),
                      SizedBox(
                        height: _authMode == AuthMode.logIn ? 15 : 10,
                      ),
                      _buildTextRow(
                          _authMode == AuthMode.logIn
                              ? 'Don\'t have an account?'
                              : 'Already have an account?',
                          'Sing in', () {
                        _authMode = _authMode == AuthMode.logIn
                            ? AuthMode.singUp
                            : AuthMode.logIn;
                      }),
                      SizedBox(
                        height: _authMode == AuthMode.logIn ? 15 : 10,
                      ),
                      SocialIconRow(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
