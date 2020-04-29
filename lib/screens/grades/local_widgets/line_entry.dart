import 'package:flutter/material.dart';

generateLine(BuildContext ctx, String lable, int total, int percentage, bool isEditting) {
  final border = isEditting ? UnderlineInputBorder() : InputBorder.none ;
  return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(lable, style: Theme.of(ctx).textTheme.bodyText2),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: SizedBox(
                width: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: TextEditingController(text: total.toString()),
                  decoration: InputDecoration(
                    border: border
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: SizedBox(
                width: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  controller:
                      TextEditingController(text: percentage.toString()),
                  decoration: InputDecoration(
                    border: border
                  ),
                )),
          ),
        ])
      ]));
}
