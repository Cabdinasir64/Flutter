import 'package:flutter/material.dart';

class Theme12 extends StatefulWidget {
  const Theme12({super.key});

  @override
  State<Theme12> createState() => _Theme12State();
}

class _Theme12State extends State<Theme12> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller
        .dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme 12: Fade Transition")),
      body: Center(
        child: FadeTransition(
          opacity:
              _opacityAnimation,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "FADE ME",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
