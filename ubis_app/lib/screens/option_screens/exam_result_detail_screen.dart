import 'package:flutter/material.dart';
import 'package:ubis_app/fake_data.dart';
import '../../models/course.dart';

class ExamResultDetailScreen extends StatelessWidget {
  static const routeName = "/exam_result_detail_screen";

  Widget build(BuildContext context) {
    final courseModelItem =
        ModalRoute.of(context)?.settings.arguments as Course;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Exam Results"),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child:
                    Text(courseModelItem.code + " - " + courseModelItem.name)),
          ),
          buildResultItem("1.Quiz", "15", 50),
          buildResultItem("Visa", "30", 60),
          buildResultItem("2.Quiz", "15", 40),
          buildResultItem("Final", "40", 70),
        ],
      )),
    );
  }

  ListTile buildResultItem(String exam, String effect, int result) {
    return ListTile(
      title: Text(exam),
      tileColor: Colors.grey.shade300,
      subtitle: Text("%" + effect),
      trailing: Text(result.toString()),
    );
  }
}
