import 'package:flutter/material.dart';

class HoneworksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homeworks"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("Homeworks"),
      ),
    );
  }
}
