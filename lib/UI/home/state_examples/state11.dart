import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class State11UI extends StatelessWidget {
  const State11UI({super.key});

  @override
  Widget build(BuildContext context) {
    final liveCounter = context.watch<int>();
    final liveStatus = context.watch<String>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("State 11: StreamProvider"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Live Counter (Every 1s):",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "$liveCounter",
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 40),
            const Text("System Status:", style: TextStyle(fontSize: 18)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                liveStatus,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
