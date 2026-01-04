import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Example1"),
        shadowColor: Colors.black,
        elevation: 4,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.pink,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.orange,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.redAccent,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.black,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.pinkAccent,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.yellowAccent,
            height: 100,
          ),
        ],
      ),
    );
  }
}
