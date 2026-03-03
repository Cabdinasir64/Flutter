import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state7.dart';

class State7UI extends StatelessWidget {
  const State7UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State 7: ProxyProvider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MessageProvider7>(
              builder: (context, messageProv, child) {
                return Text(
                  messageProv.welcomeMessage,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<AuthProvider7>().updateUsername("Maxamed");
              },
              child: const Text("Change Username to Maxamed"),
            ),
          ],
        ),
      ),
    );
  }
}
