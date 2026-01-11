import 'package:flutter/material.dart';

class Action1 extends StatefulWidget {
  const Action1({super.key});

  @override
  State<Action1> createState() => _Action1State();
}

class _Action1State extends State<Action1> {
  String message = "Halkan ka bilaaw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Action 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = "Waad taabatay badhanka!";
                });
              },
              child: const Text("Taabo Badhanka"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  message = "Halkan ka bilaaw";
                });
              },
              child: const Text("Dib u bilaaw"),
            ),
          ],
        ),
      ),
    );
  }
}
