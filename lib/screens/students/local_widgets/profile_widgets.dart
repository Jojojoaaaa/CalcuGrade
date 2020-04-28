import 'package:flutter/material.dart';

getBanner(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: SizedBox(
          width: double.infinity,
          child: Text.rich(TextSpan(
              text: "Joahnna Nicole Codilla",
              style: Theme.of(context).textTheme.headline6,
              children: [
                TextSpan(
                    text: "\nExcellent",
                    style: Theme.of(context).textTheme.caption)
              ]))));
}

getSummary(BuildContext context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          "1.00",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text("100%")
      ]);
}

getDescription(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Text.rich(TextSpan(
          text: "Breakdown",
          style: Theme.of(context).textTheme.headline6,
          children: [
            TextSpan(
                text: "\nThe grades are composed of the following parts.",
                style: Theme.of(context).textTheme.caption)
          ])));
}

getHeader(BuildContext context) {
  Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Score", style: Theme.of(context).textTheme.caption),
          Text("Total", style: Theme.of(context).textTheme.caption),
          Text("Percent", style: Theme.of(context).textTheme.caption),
          Text("Weight", style: Theme.of(context).textTheme.caption)
        ],
      ));
}

getTotal(BuildContext context) {
  // Total
  return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "Total",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("100%", style: Theme.of(context).textTheme.headline6)
          ]));
}
