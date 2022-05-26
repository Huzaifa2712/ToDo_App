import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/screens/settings.dart';
import 'package:todo_app/screens/category_screen.dart';

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int currentIndex = 0;
  final screens = [
    // Category(),
    const Home(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
    );
  }
}
