import 'package:flutter/material.dart';

/// Nuovo ThemeData da zero.
ThemeData myCustomThemeDataE1() {
  return ThemeData(
    fontFamily: "Roboto",
    primaryColor: Colors.deepOrange,
    accentColor: Colors.purple,
    textTheme: TextTheme(
      headline5: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.blue,
      ),
      headline6: TextStyle(
        fontSize: 50,
      ),
      caption: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.green,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        color: Colors.purple,
      ),
    ),
  );
}

/// Nuovo ThemeData da zero.
ThemeData myCustomThemeDataE2() {
  return ThemeData(
    fontFamily: "Roboto",
    primaryColor: Colors.deepOrange,
    accentColor: Colors.purple,
    textTheme: TextTheme(
      headline5: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.blue,
      ),
      headline6: TextStyle(
        fontSize: 50,
      ),
      caption: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.green,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        color: Colors.purple,
      ),
    ),
    brightness: Brightness.dark,
  );
}

/// Override ThemeData.light().
ThemeData myCustomThemeDataE3() {
  final ThemeData baseTheme = ThemeData.light();
  return baseTheme.copyWith(
    buttonTheme: baseTheme.buttonTheme.copyWith(
      buttonColor: Colors.blueGrey,
      splashColor: Colors.red,
    ),
  );
}
