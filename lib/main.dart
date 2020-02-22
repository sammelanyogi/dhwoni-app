import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'apppage.dart';

void main() => runApp(MyApp());




class MyApp extends StatefulWidget {
  
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{
  bool _auth = false;
  void _signInDone(){
    setState(() {
      _auth = true;
    });
  }
  void _signOutDone(){
    setState(() {
      _auth = false;
    });
  }
  Widget getPage(){
    if(_auth) return AppPage(logout: _signOutDone);
    else return LoginPage(signedIn: _signInDone);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getPage(),
    );
  }
}