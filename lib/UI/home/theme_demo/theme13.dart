import 'package:flutter/material.dart';

class Theme13 extends StatefulWidget {
  const Theme13({super.key});

  @override
  State<Theme13> createState() => _Theme13State();
}

class _Theme13State extends State<Theme13> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ), 
    );

    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
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
        title: const Text("Theme 13: Scale Transition"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation, 
          alignment: Alignment.center, 
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              shape: BoxShape.circle, 
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Center(
              child: Icon(Icons.favorite, color: Colors.white, size: 80),
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
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
