import 'package:flutter/material.dart';
import 'theme29.dart';

class Theme28 extends StatefulWidget {
  const Theme28({super.key});

  @override
  State<Theme28> createState() => _Theme28State();
}

class _Theme28State extends State<Theme28> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Decoration> _decoration;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _decoration = DecorationTween(
      begin: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(0),
      ),
      end: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(60),
      ),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBoxTransition(
              decoration: _decoration,
              child: const SizedBox(
                width: 120,
                height: 120,
                child: Icon(Icons.person, color: Colors.white, size: 50),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "User Name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Theme29()),
              ),
              child: const Text("GOTO CART"),
            ),
          ],
        ),
      ),
    );
  }
}
