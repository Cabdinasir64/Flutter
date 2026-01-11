import 'package:flutter/material.dart';

class Action6 extends StatefulWidget {
  const Action6({super.key});

  @override
  State<Action6> createState() => _Action6State();
}

class _Action6State extends State<Action6> {
  String userInput = "Qoraalku halkan ayuu ka soo muuqanayaa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField Live Action")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),
              child: Text(
                userInput,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 50),
            TextField(
              onChanged: (val) {
                setState(() {
                  userInput = val;
                  if (val.isEmpty) {
                    userInput = "Qoraalku halkan ayuu ka soo muuqanayaa";
                  }
                });
              },
              decoration: InputDecoration(
                labelText: "Ku qor wax kasta...",
                hintText: "Enter text here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.edit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
