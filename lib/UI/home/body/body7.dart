import 'package:flutter/material.dart';

class Body7 extends StatelessWidget {
  const Body7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Layout Basics")),
      body: Container(
        height: 200,
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 60, height: 60, color: Colors.red),
            Container(width: 60, height: 60, color: Colors.green),
            Container(width: 60, height: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
