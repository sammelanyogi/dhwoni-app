import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({this.logout});
  final VoidCallback logout;
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _logout() {
    widget.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
        width: MediaQuery.of(context).size.width,
        top: 20,
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://secure.gravatar.com/avatar/5b4330abd8eb6dc0acbebaebdca17fcc?s=250&d=mm&r=g'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(75)),
                  boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black)]),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Profile"),
            FlatButton(
              child: Text("Logout"),
              onPressed: _logout,
              color: Colors.blue,
            )
          ],
        ),
      ),
    ]);
  }
}
