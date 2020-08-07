import 'package:flutter/material.dart';

ThemeData appTheme() {
  // Changing colors from HEXA to flutter code
  // opacity is represented by the hexadecimal value FF. This already leaves us with 0xFF
  const colorBlack = const Color(0xFF4C4B4B);
  const colorWhite = const Color(0xFFDAE0E2);
  const colorGrey = const Color(0xFF7B8788);
  // return ThemeData(
  //   primaryColor: colorBlack,
  //   backgroundColor: colorGrey,
  //   accentColor: colorGrey,
  // );

  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
          fontFamily: "NanumMyeongjo", fontSize: 22.0, color: colorWhite),
      headline2: base.headline2.copyWith(
        fontFamily: "NanumMyeongjo",
        fontSize: 15.0,
        color: colorBlack,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: colorBlack,
  );
}

// FUNCTION TO CHANGE HEXA COLORS TO CODE FOR FLUTTER

// Color _colorFromHex(String hexColor) {
//   final hexCode = hexColor.replaceAll('#', '');
//   return Color(int.parse('FF$hexCode', radix: 16));
// }

// You can use it like this:

// Color color1 = _colorFromHex("b74093");
// Color color2 = _colorFromHex("#b74093");

//themeMode: ThemeMode.dark,//Always use the dark mode (if available) regardless of system preference.

//themeMode: ThemeMode.light,//Always use the light mode regardless of system preference.

//themeMode: ThemeMode.system,//Use either the light or dark theme based on what the user has selected in the system settings.

//themeMode: ThemeMode.values,//A constant List of the values in this enum, in order of their declaration.
