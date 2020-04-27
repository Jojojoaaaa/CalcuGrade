import 'package:flutter/material.dart';

class StudentTile extends StatelessWidget {
  StudentTile(
      {Key key, @required this.initials, @required this.name, this.finalGrade})
      : super(key: key);

  final String initials, name;
  final double finalGrade;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        child: Text(initials, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      title: Text(name, style: Theme.of(context).textTheme.bodyText1),
      trailing: Text(finalGrade.toStringAsFixed(2), style: Theme.of(context).textTheme.bodyText1),
      onTap: () {
        // go to student profile
      },
    ));
  }
}
