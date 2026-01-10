import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  const Form1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Basics"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: "Ku qor magacaaga halkan...",
                labelText: "Full Name",
                helperText: "Fadlan isticmaal magacaaga rasmiga ah",
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                hintText: "Email Address",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Gali password-kaaga",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}