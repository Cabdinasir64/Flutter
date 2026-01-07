import 'package:flutter/material.dart';

class Body6 extends StatelessWidget {
  const Body6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Advanced")),
      body: Column(
        verticalDirection: VerticalDirection.down,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Center(child: Text("Box 1")),
          ),

          SizedBox(height: 50),

          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("Box 2")),
          ),

          Expanded(
            child: Container(
              color: Colors.orange,
              child: Center(child: Text("Box 3 - Expanded")),
            ),
          ),

          Container(
            height: 100,
            color: Colors.blue,
            child: Center(child: Text("Box 4")),
          ),
        ],
      ),
    );
  }
}
