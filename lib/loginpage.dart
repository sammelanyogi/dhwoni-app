import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({this.signedIn});
  final VoidCallback signedIn;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _goToMain(){
    widget.signedIn();
  }
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: statusBarHeight,
              color: Colors.grey,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "Hello There",
                    style: Theme.of(context).textTheme.display4,
                  ),
                  FlatButton(
                    child: Text(
                      "Get Started",
                      style: Theme.of(context).textTheme.display1,
                    ),
                    onPressed: _goToMain,
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
