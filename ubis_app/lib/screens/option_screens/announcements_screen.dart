import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen>
    with TickerProviderStateMixin {
  TabBar get _tabBar => TabBar(
        indicator: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(25)),
        tabs: [
          Tab(
            child: Text(
              "GENERAL",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Tab(
              child: Text(
            "FACULTY",
            style: TextStyle(color: Colors.white),
          )),
          Tab(
            child: Text(
              "COURSE",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Announcements"),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.blue.shade200,
              child: _tabBar,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              //height: 100,
              child: Column(
                children: [
                  buildAnnouncementItem(
                      context, "Language Course", "05.09.2022", "Content"),
                ],
              ),
            ),
            Container(
              //height: 100,
              child: Column(
                children: [
                  buildAnnouncementItem(
                      context, "Internship", "05.01.2023", "Content"),
                  buildAnnouncementItem(
                      context, "Office Hours", "26.12.2022", "Content"),
                ],
              ),
            ),
            Container(
              //height: 100,
              child: Column(
                children: [
                  buildAnnouncementItem(
                      context, "Mobile Homework", "05.01.2023", "Content"),
                  buildAnnouncementItem(
                      context, "Final Project", "26.12.2022", "Content"),
                  buildAnnouncementItem(
                      context, "Final Exam", "26.12.2022", "Content"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnnouncementItem(BuildContext context, String title, String date,
      String alertDialogContent) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text(title),
          tileColor: Colors.grey.shade300,
          subtitle: Text(date),
          trailing: Icon(Icons.arrow_circle_right_outlined),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(title),
                  content: Container(
                    child: Text(alertDialogContent),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
