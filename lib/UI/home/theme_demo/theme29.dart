import 'package:flutter/material.dart';
import 'theme30.dart';

class Theme29 extends StatefulWidget {
  const Theme29({super.key});

  @override
  State<Theme29> createState() => _Theme29State();
}

class _Theme29State extends State<Theme29> {
  bool _isFull = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, anim) =>
              ScaleTransition(scale: anim, child: child),
          child: _isFull
              ? const Icon(
                  Icons.shopping_cart,
                  key: ValueKey(1),
                  size: 100,
                  color: Colors.green,
                )
              : const Icon(
                  Icons.remove_shopping_cart,
                  key: ValueKey(2),
                  size: 100,
                  color: Colors.grey,
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_isFull) {
            setState(() => _isFull = true);
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Theme30()),
            );
          }
        },
        child: Icon(_isFull ? Icons.check : Icons.add),
      ),
    );
  }
}
