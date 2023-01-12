import 'package:flutter/material.dart';

class TranscriptScreen extends StatelessWidget {
  const TranscriptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transcript"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Text("TranscriptScreen"),
      ),
    );
  }
}
