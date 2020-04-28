import 'package:flutter/material.dart';
import 'package:calcugrade/widgets/layouts/scrollview.dart';
import 'package:calcugrade/screens/students/local_widgets/profile_widgets.dart';
import 'package:calcugrade/screens/students/local_widgets/breakdown.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  // add student id later
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  buildBodyLayout(BuildContext context, BoxConstraints viewportConstraints) {
    List<Widget> children = [
      getBanner(context),
      getSummary(context),
      Divider(
        color: Colors.grey,
      ),
      getDescription(context),
      getGradeBreakdown(context, "Attendance"),
      getGradeBreakdown(context, "Quizzes"),
      getGradeBreakdown(context, "Midterms"),
      getGradeBreakdown(context, "Finals"),
      getGradeBreakdown(context, "Project"),
      getTotal(context)
    ];
    return showScrollView(children, viewportConstraints);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Profile"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext sContext, BoxConstraints viewportConstraints) {
          return buildBodyLayout(context, viewportConstraints);
        },
      ),
    );
  }
}
