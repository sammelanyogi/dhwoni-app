import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/profile.dart';

class AppPage extends StatefulWidget {
  AppPage({this.logout});

  final VoidCallback logout;

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  Color dhwoniColor = Color(0xff49dbf2);
  Color navColor = Color(0xff033a51);
  Widget getPage(int index) {
    if (index == 0) {
      return Home();
    } else if (index == 1) {
      return Profile(
        logout: _logout,
      );
    }
    return Home();
  }

  PageController _goToPage = PageController(initialPage: 0);

  void _logout() {
    widget.logout();
  }

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: PageView(
        controller: _goToPage,
        children: <Widget>[
          Home(),
          Profile(logout: _logout),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: paddingTop * 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: _selected == 0 ? navColor : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(paddingTop),
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.headset),
                  color: _selected == 0 ? Colors.white : Colors.black,
                  onPressed: () {
                    setState(() {
                      _selected = 0;
                      _goToPage.jumpToPage(0);
                    });
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: _selected == 1 ? navColor : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(paddingTop),
                  ),
                ),
                child: IconButton(
                  color: _selected == 1 ? Colors.white : Colors.black,
                  icon: Icon(Icons.mic_none),
                  iconSize: paddingTop * 1.5,
                  onPressed: () {
                    setState(() {
                      _selected = 1;
                      _goToPage.jumpToPage(0);
                    });
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: _selected == 2 ? navColor : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(paddingTop),
                  ),
                ),
                child: IconButton(
                  color: _selected == 2 ? Colors.white : Colors.black,
                  icon: Icon(Icons.person),
                  onPressed: () {
                    setState(() {
                      _selected = 2;
                      _goToPage.jumpToPage(1);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
