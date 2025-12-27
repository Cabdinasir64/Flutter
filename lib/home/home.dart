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
        actions: [
          Padding(padding: EdgeInsets.all(5), child: Icon(Icons.notifications)),
          Padding(padding: EdgeInsets.all(5), child: Icon(Icons.search)),
          Padding(padding: EdgeInsets.all(5), child: Icon(Icons.settings)),
        ],
        backgroundColor: Colors.brown,
        titleSpacing: 20,
        toolbarHeight: 80,
        elevation: 10,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24
        ),
      ),
    );
  }
}
