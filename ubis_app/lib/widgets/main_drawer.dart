import 'package:flutter/material.dart';
import 'package:ubis_app/screens/profile_screen.dart';
import 'package:ubis_app/screens/settings_screen.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawer();
}

class _MainDrawer extends State<MainDrawer> {
  Widget buildDrawerItem(String title, IconData icon, Function onTapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        onTapHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage('assets/images/iau_logo.png'),
                  ),
                  Text(
                    'Furkan Ayyildiz',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'furkanayyildiz@stu.aydin.edu.tr',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildDrawerItem("Profile", Icons.account_circle, () {
            Navigator.of(context).pushNamed("/profile_screen");
          }),
          buildDrawerItem("Library", Icons.library_books_outlined, () {}),
          buildDrawerItem("Financial Information", Icons.money, () {}),
          buildDrawerItem("Settings", Icons.settings, () {
            Navigator.of(context).pushNamed(SettingsScreen.routeName);
          }),
          buildDrawerItem("Exit", Icons.exit_to_app, () {
            Navigator.of(context).pushNamed("/");
          })
        ],
      ),
    );
  }
}
