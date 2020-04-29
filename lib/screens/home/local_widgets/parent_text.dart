import 'package:flutter/material.dart';

class ParentText extends StatelessWidget {
  ParentText({Key key, @required this.text, this.context, this.children})
      : super(key: key);
  final String text;
  final BuildContext context;
  final List<TextSpan> children;

  static TextSpan getTextSpan(
      String tsText, BuildContext context, List<TextSpan> tsChildren) {
    return TextSpan(
        text: tsText,
        style: Theme.of(context).textTheme.subtitle1,
        children: tsChildren);
  }

  static TextSpan getHighlighted(
      String tsText, BuildContext context, List<TextSpan> tsChildren) {
    return TextSpan(
        text: tsText,
        style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.orange[800]),
        children: tsChildren);
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: text,
        style: Theme.of(context).textTheme.headline5,
        children: children));
  }
}
