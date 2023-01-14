import 'package:flutter/material.dart';
import '../../models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = "/course_detail_screen";

  //CourseDetailScreen(this.courseModelItem, {super.key});

  @override
  Widget build(BuildContext context) {
    final courseModelItem =
        ModalRoute.of(context)?.settings.arguments as Course;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Course Detail"),
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                // padding: const EdgeInsets.all(10),
                height: 75,
                //width: 300,
                child: Row(
                  children: [
                    const Icon(Icons.book_rounded),
                    SizedBox(
                      width: 6,
                    ),
                    Text(courseModelItem.code + " - " + courseModelItem.name)
                  ],
                )),
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  // padding: const EdgeInsets.all(10),
                  height: 150,
                  //width: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("LECTURER"),
                              Text(courseModelItem.lecturer),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("CREDIT:"),
                            Text(courseModelItem.credit.toString()),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("AKTS"),
                            Text(courseModelItem.akts.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
