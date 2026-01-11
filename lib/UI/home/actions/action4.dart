import 'package:flutter/material.dart';

class Action4 extends StatefulWidget {
  const Action4({super.key});

  @override
  State<Action4> createState() => _Action4State();
}

class _Action4State extends State<Action4> {
  bool isLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLightOn ? Colors.yellow[100] : Colors.grey[300],
      appBar: AppBar(title: const Text("Boolean Toggle Action")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              size: 150,
              color: isLightOn ? Colors.orange : Colors.grey,
            ),
            const SizedBox(height: 50),
            Text(
              isLightOn ? "NALKA WAA SHIDAN YAHAY" : "NALKA WAA DAMSAN YAHAY",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLightOn = !isLightOn;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isLightOn ? Colors.red : Colors.green,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              child: Text(
                isLightOn ? "DEMI" : "SHID",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
