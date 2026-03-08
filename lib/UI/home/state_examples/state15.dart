import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state15.dart';
import 'package:mobile_app1/state_management/state16.dart';

class State15UI extends StatelessWidget {
  const State15UI({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductProvider15>().products;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop - State 15"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/state16'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text("\$${product.price}"),
            trailing: ElevatedButton(
              onPressed: () =>
                  context.read<CartProvider16>().addToCart(product),
              child: const Text("Add"),
            ),
          );
        },
      ),
    );
  }
}
