import 'package:flutter/material.dart';

import 'package:calcugrade/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalcuGrade',
      home: Home(),
    );
  }
}
