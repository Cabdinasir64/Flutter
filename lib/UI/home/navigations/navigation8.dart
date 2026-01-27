import 'package:flutter/material.dart';
import 'package:mobile_app1/UI/home/navigations/pages/tab_home.dart';
import 'package:mobile_app1/UI/home/navigations/pages/tab_favorites.dart';
import 'package:mobile_app1/UI/home/navigations/pages/tab_settings.dart';

class Navigation8 extends StatefulWidget {
  const Navigation8({super.key});

  @override
  State<Navigation8> createState() => _Navigation8State();
}

class _Navigation8State extends State<Navigation8> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    TabHome(),
    TabFavorites(),
    TabSettings(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 8: Real Bottom Tabs"),
        backgroundColor: Colors.indigo,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
