import 'package:flutter/material.dart';
import './styles/appTheme_1.dart';
import './components/myHomePage.dart';

void main() {
  runApp(MyPlayground());
}

class MyPlayground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //delete debbug banner
      debugShowCheckedModeBanner: false,
      // theme: appTheme(),
      theme: appTheme1(),
      home: MyHomePage(),
    );
  }
}
