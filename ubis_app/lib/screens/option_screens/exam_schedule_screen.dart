import 'package:flutter/material.dart';
import "../../fake_data.dart";

class ExamScheduleScreen extends StatelessWidget {
  final List<String> classes = <String>[
    "D101",
    "T207",
    "D403",
    "E204",
    "O1567"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam Schedule"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: COURSE_DATA.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Card(
                  color: Colors.blue.shade200,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Text("14.01.2023" + "-" + "14:00"),
                  ),
                ),
                Card(
                  elevation: 10,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: ListTile(
                      onTap: null,
                      title: Text(
                          COURSE_DATA[index].code + COURSE_DATA[index].name),
                      tileColor: Colors.grey.shade300,
                      subtitle: Text(COURSE_DATA[index].lecturer),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.blue.shade200,
                        radius: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: FittedBox(
                            child: Text(classes[index]),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
