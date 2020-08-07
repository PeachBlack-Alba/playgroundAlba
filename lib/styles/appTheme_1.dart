import 'package:flutter/material.dart';

ThemeData appTheme1() {
  const colorBlack = const Color(0xFF4C4B4B);
  const colorWhite = const Color(0xFFDAE0E2);
  const colorGrey = const Color(0xFF7B8788);
  return ThemeData(
    primaryColor: colorBlack,
    accentColor: colorWhite,
    // hintColor: Colors.white,
    // dividerColor: Colors.white,
    buttonColor: colorBlack,
    scaffoldBackgroundColor: colorWhite,
    // canvasColor: Colors.black,
    fontFamily: "NanumMyeongjo",
    // use the textTheme property
    textTheme: TextTheme(
      headline1: TextStyle(
          // give your styles
          fontFamily: "NanumMyeongjo",
          fontSize: 22.0,
          color: colorWhite),
      headline2: TextStyle(
        fontFamily: "NanumMyeongjo",
        fontSize: 15.0,
        color: colorBlack,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        fontFamily: "NanumMyeongjo",
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        fontFamily: "NanumMyeongjo",
      ),
    ),
  );
}
