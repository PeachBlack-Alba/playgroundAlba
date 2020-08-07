import 'package:flutter/material.dart';
import '../components/text_section.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  String _selectedValue;

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
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (String str) {
              setState(
                () {
                  _selectedValue = str;
                },
              );
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem(
                  child: Text(
                    "Item 1",
                    // Mentioning the theme
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  value: "Item1",
                ),
                PopupMenuItem(
                  child: Text(
                    "Item 2",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  value: "Item2",
                ),
                PopupMenuItem(
                  child: Text(
                    "Item 3",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  value: "Item3",
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            ("$_selectedValue"),
          ),
          TextSection("title", "something1"),
          // TextSection("title2", "something2"),
        ],
      ),
    );
  }
}
