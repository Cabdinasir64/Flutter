import 'dart:math' as math;
import 'package:flutter/material.dart';

class Theme11 extends StatefulWidget {
  const Theme11({super.key});

  @override
  State<Theme11> createState() => _Theme11State();
}

class _Theme11State extends State<Theme11> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _rotateAnim;
  late Animation<double> _scaleAnim;
  late Animation<Offset> _translateAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _rotateAnim = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(_controller);

    _scaleAnim = Tween<double>(
      begin: 0.5,
      end: 1.5,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _translateAnim = Tween<Offset>(
      begin: const Offset(-50, 0),
      end: const Offset(50, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme 11: Transform Properties")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,

              transform: Matrix4.identity()
                ..translate(_translateAnim.value.dx, _translateAnim.value.dy)
                ..rotateZ(_rotateAnim.value)
                ..scale(_scaleAnim.value),

              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.rocket_launch,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
