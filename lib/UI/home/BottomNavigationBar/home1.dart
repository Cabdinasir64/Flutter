import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar Example1"),
        titleSpacing: 2,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.grey,
        elevation: 3,
      ),
      body: const Center(child: Text("Home 1 Page")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
