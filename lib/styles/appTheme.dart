import 'package:flutter/material.dart';

ThemeData appTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontFamily: "NanumMyeongjo",
        fontSize: 22.0,
        color: Colors.white,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.black,
  );
}
