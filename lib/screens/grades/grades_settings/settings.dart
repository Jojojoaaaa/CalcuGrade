import 'package:flutter/material.dart';

import 'package:calcugrade/screens/grades/local_widgets/instruction.dart';
import 'package:calcugrade/screens/grades/local_widgets/header.dart';
import 'package:calcugrade/screens/grades/local_widgets/line_entry.dart';
import 'package:calcugrade/screens/grades/local_widgets/action_buttons.dart';
import 'package:calcugrade/widgets/layouts/scrollview.dart';
import 'package:calcugrade/widgets/snack_bar/custom_snack_bar.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int attendance, quizzes, midterms, finals, project;
  int attendancePercent,
      quizzesPercent,
      midtermsPercent,
      finalsPercent,
      projectPercent;
  bool isEditting = false;

  buildBodyLayout(BuildContext context, BuildContext sContext, BoxConstraints viewportConstraints) {
    List<Widget> children = [
      showInstruction(context),
      showHeader(context),
      generateLine(context, "Attendance", 80, 80, isEditting),
      generateLine(context, "Quizzes", 80, 80, isEditting),
      generateLine(context, "Midterms", 80, 80, isEditting),
      generateLine(context, "Finals", 80, 80, isEditting),
      generateLine(context, "Project", 80, 80, isEditting),
      isEditting ? showActionButtons(saveChanges, exitEditMode, sContext) : Container()
    ];

    return showScrollView(children, viewportConstraints);
  }

  void toggleEditMode() {
    setState(() {
      isEditting = true;
    });
  }

  exitEditMode() {
    setState(() {
      isEditting = false;
    });
  }

  saveChanges(context) {
    exitEditMode();
    // api call to save
    displaySnackBar("Grade settings have been modified.", context);
  }

  editButton() {
    return IconButton(
        icon: Icon(Icons.edit),
        iconSize: 35,
        onPressed: () {
          toggleEditMode();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grade Settings"),
          actions: [editButton()],
        ),
        body: LayoutBuilder(
            builder: (BuildContext sContext, BoxConstraints viewportConstraints) {
              return buildBodyLayout(context, sContext, viewportConstraints);
            }
        )
    );
  }
}
