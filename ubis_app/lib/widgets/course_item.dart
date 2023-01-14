import 'package:flutter/material.dart';
import 'package:ubis_app/models/course.dart';
import 'package:ubis_app/screens/option_screens/course_detail_screen.dart';

class CourseItem extends StatelessWidget {
  final Course courseModel;

  CourseItem(this.courseModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          Navigator.of(context)
              .pushNamed(CourseDetailScreen.routeName, arguments: courseModel);
        },
        title: Text(courseModel.name),
        tileColor: Colors.grey.shade300,
        subtitle: Text(courseModel.code),
        trailing: Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
