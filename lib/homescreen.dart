import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Drawer'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text('Help'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context); // close the drawer
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Swipe from left or tap the icon to open the drawer.'),
      ),
    );
  }
}
