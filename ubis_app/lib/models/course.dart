import 'package:flutter/material.dart';

class Course {
  final String code;
  final String name;
  final String lecturer;
  final int akts;
  final int credit;

  const Course({
    required this.code,
    required this.name,
    required this.lecturer,
    required this.akts,
    required this.credit,
  });
}
