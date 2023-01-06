import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Settings Page"),
      ),
    );
  }
}
