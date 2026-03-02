import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state3.dart';

class State3UI extends StatelessWidget {
  State3UI({super.key});

  final List<Product> products = [
    Product(id: '1', name: 'Laptop', price: 1200.0),
    Product(id: '2', name: 'Phone', price: 800.0),
    Product(id: '3', name: 'Watch', price: 250.0),
    Product(id: '4', name: 'Tablet', price: 600.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State 3: Shopping Cart"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context.read<CartProvider3>().clearCart(),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text("\$${product.price}"),
                  trailing: ElevatedButton(
                    onPressed: () =>
                        context.read<CartProvider3>().addToCart(product),
                    child: const Text("Add"),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Consumer<CartProvider3>(
              builder: (context, cart, child) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Items in Cart: ${cart.items.length}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Total: \$${cart.totalPrice}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: cart.items.length,
                        itemBuilder: (context, index) {
                          final item = cart.items[index];
                          return ListTile(
                            dense: true,
                            title: Text(item.name),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                color: Colors.red,
                              ),
                              onPressed: () => cart.removeFromCart(item),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
