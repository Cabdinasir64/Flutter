import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: const Icon(Icons.home),
        leadingWidth: 50,
        actions: [Icon(Icons.search), Icon(Icons.settings)],
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        titleSpacing: 20,
        toolbarHeight: 80,
        elevation: 10,
        shadowColor: Colors.black,
      ),
    );
  }
}
