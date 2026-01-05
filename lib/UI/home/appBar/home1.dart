import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu_open_rounded, color: Colors.white),
          onPressed: () {
            print("Menu la taabtay");
          },
        ),

        title: const Text(
          "DASHBOARD",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
            fontSize: 20,
          ),
        ),
        centerTitle: true, 
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 8), 
        ],

        backgroundColor: Colors.indigoAccent, 
        elevation: 10, 
        shadowColor: Colors.indigo.withOpacity(0.5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),

      body: const Center(child: Text("AppBar Example 1: Classic & Modern")),
    );
  }
}
