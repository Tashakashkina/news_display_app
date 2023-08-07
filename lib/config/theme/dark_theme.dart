import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    colorScheme: const ColorScheme.dark(
        background: Color.fromRGBO(0, 0, 0, 1),
        primary: Color.fromRGBO(25, 25, 112, 1),
        secondary: Color.fromRGBO(105, 105, 105, 1)));

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      elevation: 2,
      color: Color.fromRGBO(105, 105, 105, 1),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20));
}
