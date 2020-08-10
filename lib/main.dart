import 'package:flutter/material.dart';
import './styles/appTheme_1.dart';
import './components/myHomePage.dart';
import './components/myOtherPage.dart';
import 'components/myForm.dart';

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
      // comment the home because we specify the route bellow
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/other": (context) => MyOtherPage(),
        "/myForm": (context) => MyForm()
      },
    );
  }
}
