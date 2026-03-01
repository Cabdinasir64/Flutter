import 'package:flutter/material.dart';

class Theme22 extends StatefulWidget {
  const Theme22({super.key});

  @override
  State<Theme22> createState() => _Theme22State();
}

class _Theme22State extends State<Theme22> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Decoration> _decorationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _decorationAnimation = DecorationTween(
      begin: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 0),
      ),
      end: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.orangeAccent, width: 10),
        boxShadow: const [
          BoxShadow(
            color: Colors.orangeAccent,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
        title: const Text("Theme 22: DecoratedBox Transition"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: _decorationAnimation,
          child: const SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Icon(Icons.star, color: Colors.white, size: 50),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.style),
      ),
    );
  }
}
