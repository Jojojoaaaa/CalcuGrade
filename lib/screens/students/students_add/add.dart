import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, BuildContext sContext) {
  // set up the buttons
  final succesSB = SnackBar(content: Text('A student has been added.'), duration: Duration(seconds: 3));

  Widget cancelButton = FlatButton(
    child: Text("CANCEL", style: TextStyle(color: Colors.grey)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget saveButton = FlatButton(
    child: Text("SAVE", style: TextStyle(color: Colors.orange[800])),
    onPressed: () {
      Scaffold.of(sContext).showSnackBar(succesSB);
      Navigator.of(context).pop();
    },
  );

  Widget fnameTextField = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          height: .50,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'First Name',
        ),
      ));

  Widget lnameTextField = TextField(
    style: TextStyle(
      fontSize: 14,
      height: .50,
    ),
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Last Name',
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Add Student"),
    titlePadding: EdgeInsets.only(top: 20, left: 20, right: 20),
    contentPadding: EdgeInsets.all(20),
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
      return alert;
    },
  );
}
