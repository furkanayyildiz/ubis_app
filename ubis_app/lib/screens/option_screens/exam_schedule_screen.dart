import 'package:flutter/material.dart';

class ExamScheduleScreen extends StatelessWidget {
  const ExamScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam Schedule"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Exam Schedule"),
      ),
    );
  }
}
