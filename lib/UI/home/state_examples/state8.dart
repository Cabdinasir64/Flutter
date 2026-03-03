import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state8.dart';

class State8UI extends StatelessWidget {
  const State8UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State 8: Advanced ProxyProvider")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              color: Colors.blue[50],
              child: ListTile(
                title: const Text("User Status"),
                subtitle: Selector<UserProvider8, bool>(
                  selector: (_, prov) => prov.isPremium,
                  builder: (_, isPremium, __) =>
                      Text(isPremium ? "PREMIUM MEMBER" : "BASIC MEMBER"),
                ),
                trailing: Switch(
                  value: context.watch<UserProvider8>().isPremium,
                  onChanged: (val) =>
                      context.read<UserProvider8>().toggleStatus(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<CartProvider8>().addAmount(50),
              child: const Text("Add \$50 to Cart"),
            ),
            const Divider(height: 50),
            Consumer<OrderSummaryProvider8>(
              builder: (context, summary, child) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      _row("Subtotal:", "\$${summary.cartAmount}"),
                      _row(
                        "Discount (${(summary.discountPercentage * 100).toInt()}%):",
                        "-\$${summary.discountAmount}",
                      ),
                      const Divider(),
                      _row(
                        "Final Total:",
                        "\$${summary.finalTotal}",
                        isBold: true,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              color: isBold ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
