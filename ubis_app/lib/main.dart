import 'package:flutter/material.dart';
import 'package:ubis_app/screens/profile_screen.dart';
import 'package:ubis_app/screens/settings_screen.dart';

//page imports
import "./screens/login_screen.dart";
import './screens/options_screen.dart';

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
      },
    );
  }
}
