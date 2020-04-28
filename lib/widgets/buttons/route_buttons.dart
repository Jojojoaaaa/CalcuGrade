import 'package:flutter/material.dart';

import 'package:calcugrade/theme/button_style.dart';

class RouteButton extends StatelessWidget {
  RouteButton({Key key, @required this.lable, @required this.screen}) : super(key: key);
  final String lable;
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: buttonTheme(),
      child:  RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(lable, style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500)),
    )
    );
  }
}
