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
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1766445318570-1dc4bf3f5d79?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
          Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              "Beautiful Landscape",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
