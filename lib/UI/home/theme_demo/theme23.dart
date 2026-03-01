import 'package:flutter/material.dart';

class Theme23 extends StatefulWidget {
  const Theme23({super.key});

  @override
  State<Theme23> createState() => _Theme23State();
}

class _Theme23State extends State<Theme23> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _positionAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _positionAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 150, 150),
      end: const RelativeRect.fromLTRB(150, 400, 0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
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
        title: const Text("Theme 23: Positioned Transition"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _positionAnimation,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.rocket_launch,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.move_up),
      ),
    );
  }
}
