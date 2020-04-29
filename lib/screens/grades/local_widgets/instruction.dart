import 'package:flutter/material.dart';

showInstruction(BuildContext ctx) {
  return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
          "Modify the value of the total scores for each of the criteria and it’s percentage value.",
          style: Theme.of(ctx).textTheme.caption));
}
