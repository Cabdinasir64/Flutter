import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state10.dart';

class State10UI extends StatelessWidget {
  const State10UI({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserModel10?>();

    return Scaffold(
      appBar: AppBar(title: const Text("State 10: Real API FutureProvider")),
      body: Center(
        child: user == null
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.person, size: 100, color: Colors.blue),
                    const SizedBox(height: 20),
                    Text(
                      "Name: ${user.name}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Email: ${user.email}",
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Phone: ${user.phone}",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
