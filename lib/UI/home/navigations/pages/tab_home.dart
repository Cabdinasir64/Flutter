import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  const TabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home_filled, size: 80, color: Colors.indigo),
            Text("Home Screen", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
