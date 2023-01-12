import 'package:flutter/material.dart';

//page imports
import "./screens/login_screen.dart";
import './screens/options_screen.dart';
import './screens/courses_screen.dart';
import './screens/absenteeism_screen.dart';
import './screens/announcements_screen.dart';
import './screens/course_notes_screen.dart';
import './screens/exam_result_screen.dart';
import './screens/exam_schedule_screen.dart';
import './screens/homeworks_screen.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';
import './screens/syllabus_screen.dart';
import './screens/transcript_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UBIS',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
      ),
      //home: LoginScreen(),
      routes: {
        "/": (context) => LoginScreen(),
        OptionScreen.routeName: (context) => OptionScreen(),
        "/profile_screen": (context) => ProfileScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
        "/abenteeism_screen": (context) => AbsenteeismScreen(),
        "/announcements_screen": (context) => AnnouncementsScreen(),
        "/courses_screen": (context) => CoursesScreen(),
        "/course_notes_screen": (context) => CourseNotesScreen(),
        "/exam_schedule": (context) => ExamScheduleScreen(),
        "/exam_result_screen": (context) => ExamResultScreen(),
        "/homeworks_screen": (context) => HoneworksScreen(),
        "/syllabus_screen": (context) => SyllabusScreen(),
        "/transcript_screen": (context) => TranscriptScreen(),
      },
    );
  }
}
