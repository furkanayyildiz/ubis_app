import 'package:flutter/material.dart';

class ExamResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam Result"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Exam Result"),
      ),
    );
  }
}
