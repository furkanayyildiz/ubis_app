import 'package:flutter/material.dart';

class SyllabusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Syllabus"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Syllabus Screen"),
      ),
    );
  }
}
