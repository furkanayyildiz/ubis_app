import 'package:flutter/material.dart';

// page imports
import './models/option.dart';

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
