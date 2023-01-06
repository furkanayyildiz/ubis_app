import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final String id;
  final String title;
  final IconData icon;

  OptionItem(this.id, this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(icon),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 160, 160, 160),
              Color.fromARGB(255, 224, 224, 224),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
