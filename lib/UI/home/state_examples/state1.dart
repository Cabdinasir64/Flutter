import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state1.dart'; 

class State1UI extends StatelessWidget {
  const State1UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State 1: Provider Counter"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Natiijada hadda waa:", style: TextStyle(fontSize: 20)),
            Consumer<CounterProvider1>(
              builder: (context, provider, child) {
                return Text(
                  '${provider.count}',
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => context.read<CounterProvider1>().decrement(),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => context.read<CounterProvider1>().reset(),
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterProvider1>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
