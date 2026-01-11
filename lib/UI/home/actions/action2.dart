import 'package:flutter/material.dart';

class Action2 extends StatefulWidget {
  const Action2({super.key});

  @override
  State<Action2> createState() => _Action2State();
}

class _Action2State extends State<Action2> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Action"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "TIRADA HADDA:",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              "$count",
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (count > 0) {
                        count--;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text("Tirtir Tirada"),
            ),
          ],
        ),
      ),
    );
  }
}
