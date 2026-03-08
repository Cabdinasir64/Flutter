import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state14.dart';

class State14UI extends StatelessWidget {
  State14UI({super.key});

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider14>();

    return Scaffold(
      appBar: AppBar(title: const Text("Login - State 14")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: auth.isLoggedIn
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome, ${auth.userName}",
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/state15'),
                      child: const Text("Go to Shop"),
                    ),
                    TextButton(
                      onPressed: () => auth.logout(),
                      child: const Text("Logout"),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: "Enter Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => auth.login(_nameController.text),
                    child: const Text("Login"),
                  ),
                ],
              ),
      ),
    );
  }
}
