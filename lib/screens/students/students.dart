import 'package:flutter/material.dart';

import 'package:calcugrade/screens/students/local_widgets/student_tile.dart';
import 'package:calcugrade/screens/students/students_add/add.dart';
import 'package:calcugrade/screens/students/students_class/student.dart';

class Students extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Student List'), actions: [
          IconButton(
            icon: Icon(Icons.settings),
            iconSize: 35,
            onPressed: () {},
          )
        ]),
        body: ListView(
          children: [
            StudentTile(
                initials: "JC",
                name: "Joahnna Nicole Codilla",
                finalGrade: 1.00),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
            StudentTile(
                initials: "JC",
                name: "Joahnna Nicole Codilla",
                finalGrade: 1.00),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
            StudentTile(
                initials: "JC",
                name: "Joahnna Nicole Codilla",
                finalGrade: 1.00),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
            StudentTile(
                initials: "JC",
                name: "Joahnna Nicole Codilla",
                finalGrade: 1.00),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
            StudentTile(
                initials: "JC",
                name: "James Christian Tupas",
                finalGrade: 1.25),
          ],
        ),
        floatingActionButton: new Builder(builder: (BuildContext sContext) {
          return new FloatingActionButton(
            onPressed: () {
              showAlertDialog(context, sContext);
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 36.0,
            ),
          );
        }));
  }
}
