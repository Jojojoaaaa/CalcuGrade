import 'package:flutter/material.dart';

value(BuildContext context) {
  return SizedBox(
      width: 45,
      child: TextField(
        style: Theme.of(context).textTheme.subtitle2,
        textAlign: TextAlign.center,
        controller: TextEditingController(text: 90.toString()),
        decoration: InputDecoration(border: UnderlineInputBorder()),
      ));
}

getGradeBreakdown(BuildContext context, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: Theme.of(context).textTheme.subtitle2),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         value(context),
         value(context),
         value(context),
         value(context),
        ],
      ),
      Divider(
        color: Colors.grey,
      ),
    ],
  );
}
