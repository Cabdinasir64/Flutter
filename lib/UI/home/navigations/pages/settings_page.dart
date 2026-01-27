import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const routeName = '/settings_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text(
          "Halkan waa bogga Settings-ka",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
