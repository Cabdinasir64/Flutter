import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home Page'),
      leading: const Icon(Icons.home),
      leadingWidth: 50,
      actions: const [
        Padding(padding: EdgeInsets.all(5), child: Icon(Icons.notifications)),
        Padding(padding: EdgeInsets.all(5), child: Icon(Icons.search)),
        Padding(padding: EdgeInsets.all(5), child: Icon(Icons.settings)),
      ],
      backgroundColor: Colors.brown,
      titleSpacing: 20,
      toolbarHeight: 80,
      elevation: 10,
      shadowColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80); 
}
