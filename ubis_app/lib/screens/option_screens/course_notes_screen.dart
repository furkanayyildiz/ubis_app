import 'package:flutter/material.dart';

class CourseNotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course Notes"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Course Notes"),
      ),
    );
  }
}
