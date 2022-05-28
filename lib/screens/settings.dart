import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text(
          'welcome to settings',
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
