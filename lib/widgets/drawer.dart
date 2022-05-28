import 'package:flutter/material.dart';
import 'package:todo_app/screens/category_screen.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/screens/settings.dart';

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
          UserAccountsDrawerHeader(
            accountName: const Text('huzaifa'),
            accountEmail: const Text('hz@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.purple),
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
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text(
              'settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
        ],
      ),
    );
  }
}
