import 'package:flutter/material.dart';
import 'package:todo_app/Drawer/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Home'),
          ),
          drawer: const Drawer_Navigation(),
          body: Center(
            child: BottomNavigationBar(items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.pink,
              ),
            ]),
          )),
    );
  }
}
