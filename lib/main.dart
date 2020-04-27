import 'package:flutter/material.dart';

import 'package:calcugrade/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalcuGrade',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.orange[800],
        buttonColor: Colors.orange[800],
        accentColor: Colors.orangeAccent,

        // Define the default font family.
        fontFamily: 'Roboto',

        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      home: Home(),
    );
  }
}
