import 'package:flutter/material.dart';

class Theme14 extends StatefulWidget {
  const Theme14({super.key});

  @override
  State<Theme14> createState() => _Theme14State();
}

class _Theme14State extends State<Theme14> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
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
        title: const Text("Theme 14: Rotation Transition"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: RotationTransition(
          turns: _rotationAnimation,
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.blue],
              ),
            ),
            child: const Center(
              child: Icon(Icons.settings, color: Colors.white, size: 100),
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
        backgroundColor: Colors.purple,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
