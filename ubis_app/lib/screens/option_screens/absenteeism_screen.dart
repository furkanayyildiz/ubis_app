import 'package:flutter/material.dart';
import "../../fake_data.dart";

class AbsenteeismScreen extends StatelessWidget {
  final List<int> values = [20, 5, 16, 9, 12];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Absenteeism"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: COURSE_DATA.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: ListTile(
                  onTap: null,
                  title: Text(COURSE_DATA[index].code),
                  tileColor: Colors.grey.shade300,
                  subtitle: Text(COURSE_DATA[index].name),
                  trailing: Container(
                    padding: EdgeInsets.all(5),
                    child: Text("%" + values[index].toString()),
                    color: values[index] > 15 ? Colors.red : Colors.green,
                  )),
            );
          },
        ));
  }
}
