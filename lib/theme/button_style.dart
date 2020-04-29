import 'package:flutter/material.dart';

ThemeData buttonTheme() {
  return ThemeData(
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange[800],
    )
  );
}

ThemeData buttonCancelTheme() {
  return ThemeData(
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey[500],
    )
  );
}
