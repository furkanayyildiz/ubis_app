import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcements"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Announcements Screene"),
      ),
    );
  }
}
