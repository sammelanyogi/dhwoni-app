import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
    _counter = _counter + 1;
    });
  }
  @override
  Widget build (BuildContext context){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display3,
            ),
            FlatButton(
              onPressed: _incrementCounter,
              child: Text("Push"),
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      );
  }
}
