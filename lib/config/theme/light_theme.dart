import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    colorScheme: const ColorScheme.light(
        background: Color.fromRGBO(230, 230, 250, 1),
        primary: Color.fromRGBO(70, 130, 180, 1),
        secondary: Color.fromRGBO(173, 216, 230, 1)));

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      elevation: 2,
      color: Color.fromRGBO(100, 149, 237, 1),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20));
}
