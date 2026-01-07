import 'package:flutter/material.dart';

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Basics")),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(20),
        child: Text(
          "Gudaha Container",
          style: TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
