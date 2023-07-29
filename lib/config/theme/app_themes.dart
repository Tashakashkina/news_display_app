import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      elevation: 0,
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.blueGrey,
      ),
      titleTextStyle: TextStyle(color: Colors.grey, fontSize: 20));
}
