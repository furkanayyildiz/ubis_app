import 'package:flutter/material.dart';

// page imports
import './models/option.dart';
import './models/course.dart';

const OPTIAN_DATA = [
  Option(
    id: "o1",
    title: "Announcements",
    icon: Icons.announcement_outlined,
    path: "/announcements_screen",
  ),
  Option(
    id: "o2",
    title: "Absenteeism",
    icon: Icons.note,
    path: "/abenteeism_screen",
  ),
  Option(
    id: "o3",
    title: "Courses",
    icon: Icons.play_lesson_outlined,
    path: "/courses_screen",
  ),
  Option(
      id: "o4",
      title: "Course Notes",
      icon: Icons.note,
      path: "/course_notes_screen"),
  Option(
      id: "o5",
      title: "Exam Schedule",
      icon: Icons.quiz,
      path: "/exam_schedule"),
  Option(
      id: "o6",
      title: "Exam Results",
      icon: Icons.quiz,
      path: "/exam_result_screen"),
  Option(
    id: "o7",
    title: "Homeworks",
    icon: Icons.note,
    path: "/homeworks_screen",
  ),
  Option(
      id: "o8",
      title: "Syllabus",
      icon: Icons.calendar_month_outlined,
      path: "/syllabus_screen"),
  Option(
    id: "o9",
    title: "Transcript",
    icon: Icons.grade,
    path: "/transcript_screen",
  ),
];

const OPTION_DATA = [
  Course(
    code: "SEN431",
    name: "DATA MINING",
    lecturer: "DR. ATINC YILMAZ",
    akts: 4,
    credit: 3,
  ),
  Course(
    code: "SEN417",
    name: "MOBILE APPLICATION",
    lecturer: "PROF.DR. ALI OKATAN",
    akts: 4,
    credit: 3,
  ),
  Course(
    code: "SEN413",
    name: "GRADUATION PROJECT",
    lecturer: "DOC.DR.YAKUP CELIKBILEK",
    akts: 3,
    credit: 3,
  ),
  Course(
    code: "SEN441",
    name: "SOFTWARE TESTING",
    lecturer: "DOC.DR. ILHAN HUSEYINOV",
    akts: 4,
    credit: 3,
  ),
  Course(
    code: "SEN437",
    name: "MACHINE LEARNING",
    lecturer: "PROF.DR.ALI OKATAN",
    akts: 4,
    credit: 3,
  ),
];
