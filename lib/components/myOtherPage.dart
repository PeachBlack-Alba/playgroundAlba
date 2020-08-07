import 'package:flutter/material.dart';
import '../components/myBottomNavbar.dart';
import '../components/text_section.dart';

class MyOtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centers the title in the appBar
        centerTitle: true,
        title: Text(
          "Alba's Playground",
          // Mentioning the theme
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextSection("My other page", "Text"),
          // TextSection("title2", "something2"),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
