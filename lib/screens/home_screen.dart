import 'package:flutter/material.dart';
// import 'package:todo_app/widgets/bottom_navigation_bar.dart';
import 'package:todo_app/widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text('Home'),
      ),
      drawer: const Drawer_Navigation(),
      body: const Center(
        child: Text(
          'welcome',
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
