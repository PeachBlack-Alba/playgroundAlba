import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colorBlack = const Color(0xFF4C4B4B);

    return Container(
      height: 60.0,
      padding: EdgeInsets.only(top: 5.0, bottom: 20.0),
      color: colorBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 44.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.folder,
              size: 44.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/other");
            },
          ),
        ],
      ),
    );
  }
}
