import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int currentIndex = 0;

  List<Widget> pages = [
    Container(
      color: Colors.red,
      child: Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
    ),
    Container(
      color: Colors.yellow,
      child: Center(child: Text("About Page", style: TextStyle(fontSize: 24))),
    ),
    Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text("Settings Page", style: TextStyle(fontSize: 24)),
      ),
    ),
    Container(
      color: Colors.purpleAccent,
      child: Center(
        child: Text("Contact Page", style: TextStyle(fontSize: 24)),
      ),
    ),
  ];

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
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        backgroundColor: Colors.indigoAccent,
        onTap: (index) => {
          setState(() {
            currentIndex = index;
          }),
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}
