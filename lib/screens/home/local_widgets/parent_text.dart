import 'package:flutter/material.dart';

class ParentText extends StatelessWidget {
  ParentText({Key key, @required this.text, this.style, this.children})
      : super(key: key);
  final String text;
  final TextStyle style;
  final List<TextSpan> children;

  static TextSpan getTextSpan(String tsText, TextStyle tsStyle, List<TextSpan> tsChildren) {
    return TextSpan(text: tsText, style: tsStyle, children: tsChildren);
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: text, style: style, children: children));
  }
}
