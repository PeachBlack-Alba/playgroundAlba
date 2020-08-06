import 'package:flutter/material.dart';
import './styles/appTheme.dart';

void main() {
  runApp(MyPlayground());
}

class MyPlayground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      //delete debbug banner
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
    );
  }
}

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
          PopupMenuButton(onSelected: (String str) {
            setState(() {
              _selectedValue = str;
            });
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Text("Item 1"),
                value: "Item1",
              ),
              PopupMenuItem(
                child: Text("Item 2"),
                value: "Item2",
              ),
              PopupMenuItem(
                child: Text("Item 3"),
                value: "Item3",
              ),
            ];
          })
        ],
      ),
      body: Center(
        child: Text("$_selectedValue"),
      ),
    );
  }
}
