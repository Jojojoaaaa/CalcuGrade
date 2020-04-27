import 'package:flutter/material.dart';

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

  showInstruction(BuildContext ctx) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
            "Modify the value of the total scores for each of the criteria and it’s percentage value.",
            style: Theme.of(ctx).textTheme.caption));
  }

  showHeader(BuildContext ctx) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Criteria", style: Theme.of(ctx).textTheme.caption),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SizedBox(
                  width: 50,
                  child: Text("Total", style: Theme.of(ctx).textTheme.caption)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: SizedBox(
                  width: 100,
                  child: Text("Percentage",
                      style: Theme.of(ctx).textTheme.caption)),
            )
          ])
        ]));
  }

  generateLine(BuildContext ctx, String lable, int total, int percentage) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(lable, style: Theme.of(ctx).textTheme.bodyText2),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: TextEditingController(text: total.toString()),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 20),
              child: SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller:
                        TextEditingController(text: percentage.toString()),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  )),
            ),
          ])
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Grade Settings"),
        ),
  body: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                showInstruction(context),
                showHeader(context),
                generateLine(context, "Attendance", 80, 80),
                generateLine(context, "Quizzes", 80, 80),
                generateLine(context, "Midterms", 80, 80),
                generateLine(context, "Finals", 80, 80),
                generateLine(context, "Project", 80, 80)
              ],
            )),
        ),
      );
    },
  ));
  }
}
