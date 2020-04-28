import 'package:flutter/material.dart';

import 'package:calcugrade/widgets/buttons/route_buttons.dart';
import 'package:calcugrade/screens/home/local_widgets/parent_text.dart';
import 'package:calcugrade/screens/students/students.dart';

class Home extends StatelessWidget {
  final String headline = "Hi there!\n";
  final String subheader = "Welcome to ";
  final String highlight = "CALCUGRADE\n";
  final String subheader2 = "Let's get work done!";

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
              context: context,
              children: [
                ParentText.getTextSpan(subheader, context,
                    [ParentText.getTextSpan(highlight, context, [])]),
                ParentText.getTextSpan(subheader2, context, [])
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
