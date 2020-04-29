import 'package:flutter/material.dart';

showScrollView(List<Widget> children, viewportConstraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: viewportConstraints.maxHeight,
      ),
      child: Padding(
          padding: EdgeInsets.all(20), child: Column(children: children)),
    ),
  );
}
