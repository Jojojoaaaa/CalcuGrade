import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.orange[800],
    accentColor: Colors.orangeAccent,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
        headline2: TextStyle(color: Colors.black),
        headline5: TextStyle(fontWeight: FontWeight.w900),
        caption: TextStyle(fontSize: 14)),
  );
}
