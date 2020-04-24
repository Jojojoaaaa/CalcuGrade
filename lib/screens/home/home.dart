import 'package:flutter/material.dart';

import 'package:calcugrade/widgets/buttons/route_buttons.dart';
import 'package:calcugrade/screens/students/students.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  "Hi there!",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Welcome to ',
                    style: Theme.of(context).textTheme.subtitle1,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'CALCUGRADE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800])),
                    ],
                  ),
                ),
                Text(
                  "Let's get work done!",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
            Image(image: AssetImage('assets/home/calcugrade.png')),
            RouteButton(lable: "CONTINUE", screen: Students()),
          ],
        ),
      ),
    );
  }
}
