import 'package:flutter/material.dart';

import 'package:calcugrade/widgets/buttons/route_buttons.dart';
import 'package:calcugrade/screens/home/local_widgets/parent_text.dart';
import 'package:calcugrade/screens/students/students.dart';

class Home extends StatelessWidget {
  final String headline = "Hi there!\n";
  final String subheader = "Welcome to ";
  final String highlight = "CALCUGRADE\n";
  final String subheader2 = "Let's get work done!";
  final TextStyle highlightStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.orange[800]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ParentText(
              text: headline,
              style: Theme.of(context).textTheme.headline5,
              children: [
                ParentText.getTextSpan(
                    subheader,
                    Theme.of(context).textTheme.subtitle1,
                    [ParentText.getTextSpan(highlight, highlightStyle, [])]),
                ParentText.getTextSpan(
                    subheader2, Theme.of(context).textTheme.subtitle1, [])
              ],
            ),
            Image(image: AssetImage('assets/home/calcugrade.png')),
            SizedBox(
                width: double.infinity,
                child: RouteButton(lable: "CONTINUE", screen: Students())),
          ],
        ),
      )),
    );
  }
}
