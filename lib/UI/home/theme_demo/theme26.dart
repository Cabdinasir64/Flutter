import 'package:flutter/material.dart';
import 'theme27.dart';

class Theme26 extends StatefulWidget {
  const Theme26({super.key});

  @override
  State<Theme26> createState() => _Theme26State();
}

class _Theme26State extends State<Theme26> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SlideTransition(
            position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                .animate(
                  CurvedAnimation(
                    parent: _controller,
                    curve: Interval(
                      (1 / 10) * index,
                      1.0,
                      curve: Curves.easeOut,
                    ),
                  ),
                ),
            child: Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Hero(
                  tag: 'item-$index',
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                ),
                title: Text("Product Item $index"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Theme27(index: index),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
