import 'package:flutter/material.dart';

showHeader(BuildContext ctx) {
  return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Criteria", style: Theme.of(ctx).textTheme.caption),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: SizedBox(
                width: 50,
                child: Text("Total", style: Theme.of(ctx).textTheme.caption)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: SizedBox(
                width: 100,
                child:
                    Text("Percentage", style: Theme.of(ctx).textTheme.caption)),
          )
        ])
      ]));
}
