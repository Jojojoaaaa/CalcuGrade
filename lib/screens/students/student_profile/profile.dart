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
      getLabel(context),
      getSummary(context),
      Divider(
        color: Colors.grey,
      ),
      getDescription(context),
      getEditGradesButton(),
      getHeader(context),
      getGradeBreakdown(context, "Attendance"),
      getGradeBreakdown(context, "Quizzes"),
      getGradeBreakdown(context, "Midterms"),
      getGradeBreakdown(context, "Finals"),
      getGradeBreakdown(context, "Project"),
      getTotal(context)
    ];
    return showScrollView(children, viewportConstraints);
  }

  getOptions() {
    return PopupMenuButton<String>(
      onSelected: (String choice) {
        if (choice == "remove") {
          // trigger remove
        } else {
          //trigger
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(value: "edit", child: Text("Edit", style: Theme.of(context).textTheme.caption)),
        PopupMenuItem<String>(value: "remove", child: Text("Remove", style: Theme.of(context).textTheme.caption)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Profile"),
        actions: [getOptions()],
      ),
      body: LayoutBuilder(
        builder: (BuildContext sContext, BoxConstraints viewportConstraints) {
          return buildBodyLayout(context, viewportConstraints);
        },
      ),
    );
  }
}
