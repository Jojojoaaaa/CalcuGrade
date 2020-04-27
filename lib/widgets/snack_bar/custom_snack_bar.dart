import 'package:flutter/material.dart';

displaySnackBar(String message, BuildContext context) {
  final sb = SnackBar(content: Text(message), duration: Duration(seconds: 3));
  return Scaffold.of(context).showSnackBar(sb);
}
