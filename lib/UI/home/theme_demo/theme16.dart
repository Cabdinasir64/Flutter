import 'package:flutter/material.dart';

class Theme16 extends StatefulWidget {
  const Theme16({super.key});

  @override
  State<Theme16> createState() => _Theme16State();
}

class _Theme16State extends State<Theme16> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _sizeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
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
        title: const Text("Theme 16: Size Transition"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey.withValues(alpha: 0.1),
          child: SizeTransition(
            sizeFactor: _sizeAnimation,
            axis: Axis.vertical,
            axisAlignment: 0.0,
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.expand, color: Colors.white, size: 80),
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
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.height),
      ),
    );
  }
}
