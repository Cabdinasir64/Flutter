import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state12.dart';

class State12UI extends StatelessWidget {
  const State12UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State 12: Consumer Child")),
      body: Center(
        child: Consumer<CounterProvider12>(
          child: const Column(
            children: [
              FlutterLogo(size: 100),
              Text("Kani waa Widget weyn oo aan isbedelayn (Static)"),
            ],
          ),

          builder: (context, provider, staticChild) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                staticChild!,

                const SizedBox(height: 20),
                const Text("Lambarka kordhaya waa:"),
                Text(
                  "${provider.count}",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterProvider12>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
