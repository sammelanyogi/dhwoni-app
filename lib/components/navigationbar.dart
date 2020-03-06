import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({this.help});
  final VoidCallback help;
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  Color dhwoniColor = Color(0xff49dbf2);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: statusBarHeight * 4,
      width: deviceWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: statusBarHeight * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "ध्वोनि",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w800),
            ),
            IconButton(
              icon: Icon(Icons.help),
              iconSize: statusBarHeight * 1.5,
              color: dhwoniColor,
              onPressed: widget.help,
            ),
          ],
        ),
      ),
    );
  }
}
