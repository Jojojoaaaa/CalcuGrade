import 'package:flutter/material.dart';

import 'package:calcugrade/widgets/snack_bar/custom_snack_bar.dart';

showAlertDialog(BuildContext context, BuildContext sContext) {
  // set up the buttons

  Widget cancelButton = FlatButton(
    child: Text("CANCEL", style: TextStyle(color: Colors.grey)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget saveButton = FlatButton(
    child: Text("SAVE", style: TextStyle(color: Colors.orange[800])),
    onPressed: () {
      displaySnackBar("A student has been added.", sContext);
      Navigator.of(context).pop();
    },
  );

  Widget fnameTextField = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'First Name',
        ),
      ));

  Widget lnameTextField = TextField(
    style: TextStyle(
      fontSize: 14,
    ),
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Last Name',
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Add Student"),
    titlePadding: EdgeInsets.all(20),
    content: SizedBox(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [fnameTextField, lnameTextField])),
    actions: [
      saveButton,
      cancelButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: alert
        ),
      );
    },
  );
    },
  );
}
