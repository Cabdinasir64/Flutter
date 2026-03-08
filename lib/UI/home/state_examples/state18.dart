import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state16.dart';

class State18UI extends StatelessWidget {
  const State18UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            const Text("Order Placed Successfully!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                context.read<CartProvider16>().clearCart();
                Navigator.pushNamedAndRemoveUntil(context, '/state14', (route) => false);
              },
              child: const Text("Back to Home"),
            )
          ],
        ),
      ),
    );
  }
}