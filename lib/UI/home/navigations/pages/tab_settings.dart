import 'package:flutter/material.dart';

class TabSettings extends StatelessWidget {
  const TabSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.settings, size: 80, color: Colors.grey),
            Text("Settings Screen", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
