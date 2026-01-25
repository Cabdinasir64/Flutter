import 'package:flutter/material.dart';

class Navigation6 extends StatelessWidget {
  const Navigation6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 6: Send Arguments"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Screen 1: Xog gudbin (Named Routes)",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/user_info',
                  arguments: {
                    'product_name': 'Laptop ASUS',
                    'price': 1200,
                    'is_available': true,
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: const Text("Gudbi Xogta Alaabta"),
            ),
          ],
        ),
      ),
    );
  }
}

class Navigation6Detail extends StatelessWidget {
  const Navigation6Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    final Map<String, dynamic> productData =
        (arguments as Map<String, dynamic>?) ?? {};

    final String productName = productData['product_name'] ?? 'Ma cadda';
    final int price = productData['price'] ?? 0;
    final bool isAvailable = productData['is_available'] ?? false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Xogta Product-ga:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Text("Magaca: $productName"),
              Text("Qiimaha: \$${price.toString()}"),
              Text("Diyaar ma yahay: ${isAvailable ? 'Haa' : 'Maya'}"),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("DIB U LAABO"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
