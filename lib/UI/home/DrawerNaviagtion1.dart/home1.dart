import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Navigation Example1')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('John Doe'),
              accountEmail: const Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage('assets/profile.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: const Icon(Icons.group_rounded),
              title: const Text('New Group'),
            ),
            ListTile(
              leading: const Icon(Icons.person_rounded),
              title: const Text('Contact'),
            ),
            ListTile(
              leading: const Icon(Icons.call_rounded),
              title: const Text('Call'),
            ),
            ListTile(
              leading: const Icon(Icons.map_rounded),
              title: const Text('People nearby'),
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_rounded),
              title: const Text('Saved Messages'),
            ),
          ],
        ),
      ),
    );
  }
}
