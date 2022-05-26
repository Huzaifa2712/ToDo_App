import 'package:flutter/material.dart';
import 'package:todo_app/screens/category_screen.dart';
import 'package:todo_app/screens/home_screen.dart';

class Drawer_Navigation extends StatefulWidget {
  const Drawer_Navigation({Key? key}) : super(key: key);

  @override
  State<Drawer_Navigation> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer_Navigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('huzaifa'),
            accountEmail: Text('hz@gmail.com'),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              'home',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text(
              'settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.view_list,
              color: Colors.black,
            ),
            title: const Text(
              'categories',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Categories()));
            },
          ),
        ],
      ),
    );
  }
}
