import 'package:flutter/material.dart';
import 'package:ubis_app/widgets/exam_result_item.dart';
import '../../fake_data.dart';

class ExamResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam Result"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: COURSE_DATA.length,
            itemBuilder: (context, index) {
              return ExamResultItem(COURSE_DATA[index]);
            },
          ),
        ),
      ),
    );
  }
}
