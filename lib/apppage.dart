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
  
  int _bottomNavIndex = 0;

  Widget getPage(int index) {
    if(index==0){
      return Home();
    }
    else if (index==1){
      return Profile(logout: _logout,);
    }
    return Home();
  }
  void _logout(){
    widget.logout();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dhwoni',
        ),
      ),
      body: getPage(_bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
