import 'package:flutter/material.dart';

import 'package:calcugrade/theme/button_style.dart';

showActionButtons(saveFunction, cancelFunction, context) {
  return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    Padding(
        padding: EdgeInsets.only(right: 10),
        child: Theme(
            data: buttonTheme(),
            child: RaisedButton(
                onPressed: () {
                  saveFunction(context);
                },
                child: Text("SAVE",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500))))),
    Theme(
        data: buttonCancelTheme(),
        child: RaisedButton(
            onPressed: () {
              cancelFunction();
            },
            child: Text("CANCEL",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)))),
  ]);
}
