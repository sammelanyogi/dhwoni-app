import 'package:dhwoni/components/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color dhwoniColor = Color(0xff49dbf2);
  void goToHelp() {}
  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: paddingTop,
          ),
          NavigationBar(help: goToHelp),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: deviceHeight * 0.25),
                height: deviceHeight * 0.3,
                width: deviceWidth - paddingTop * 3,
                decoration: BoxDecoration(
                  color: dhwoniColor,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0xff000000).withOpacity(0.2),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: paddingTop * 1.5, vertical: paddingTop * 2),
                  child: Text(
                    "मेरो नाम सम्मेलन योगी हो। म जहिले पानि हास्छु ।",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceHeight * 0.5 + paddingTop),
                padding: EdgeInsets.symmetric(horizontal:paddingTop),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: paddingTop * 1.5,
                      width: paddingTop * 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0xff000000).withOpacity(0.2),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: paddingTop * 2.2,
                      width: paddingTop * 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0xff000000).withOpacity(0.2),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.play_arrow),
                        color: dhwoniColor,
                        iconSize: paddingTop * 1.5,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: paddingTop * 1.5,
                      width: paddingTop * 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0xff000000).withOpacity(0.2),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
