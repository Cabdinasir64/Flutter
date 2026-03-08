import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state17.dart';

class State17UI extends StatelessWidget {
  const State17UI({super.key});

  @override
  Widget build(BuildContext context) {
    final summary = context.watch<OrderSummaryProvider17>();

    return Scaffold(
      appBar: AppBar(title: const Text("Checkout - State 17")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Customer: ${summary.customerName}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 30),
            _buildPriceRow("Subtotal", summary.subTotal),
            _buildPriceRow("Tax (5%)", summary.tax),
            _buildPriceRow("Shipping", summary.shipping),
            const Divider(),
            _buildPriceRow("Grand Total", summary.grandTotal, isBold: true),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/state18'),
                child: const Text("Place Order"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, double price, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            "\$${price.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
