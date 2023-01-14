import 'package:flutter/material.dart';
import 'package:ubis_app/widgets/course_item.dart';
import '../../fake_data.dart';
import '../../widgets/course_item.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: ListView.builder(
              itemCount: COURSE_DATA.length,
              itemBuilder: (context, index) {
                return CourseItem(COURSE_DATA[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
