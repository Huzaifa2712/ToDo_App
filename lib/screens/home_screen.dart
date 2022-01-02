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
            child: Container(
              child: const Text(
                'welcome to home screen',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
