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
        primaryColor: Colors.orange[800],
        buttonColor: Colors.orange[800],

        // Define the default font family.
        fontFamily: 'Roboto',

        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: Home(),
    );
  }
}
