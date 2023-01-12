import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text("Data Mining"),
          tileColor: Colors.grey.shade300,
          subtitle: Text("SEN123"),
          trailing: Icon(Icons.arrow_circle_right_outlined),
        ),
      ),
    );
  }
}
