import 'package:flutter/material.dart';

class Action3 extends StatefulWidget {
  const Action3({super.key});

  @override
  State<Action3> createState() => _Action3State();
}

class _Action3State extends State<Action3> {
  Color screenColor = Colors.white;
  String colorName = "White";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenColor,
      appBar: AppBar(title: const Text("Color Action")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Midabka Hadda: $colorName",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  screenColor = Colors.red;
                  colorName = "Red";
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("RED", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  screenColor = Colors.green;
                  colorName = "Green";
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("GREEN", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  screenColor = Colors.blue;
                  colorName = "Blue";
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("BLUE", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  screenColor = Colors.black;
                  colorName = "Black";
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text("BLACK", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                setState(() {
                  screenColor = Colors.white;
                  colorName = "White";
                });
              },
              child: const Text("DIB U BILAAW (RESET)"),
            ),
          ],
        ),
      ),
    );
  }
}
