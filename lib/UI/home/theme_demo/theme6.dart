import 'dart:math';
import 'package:flutter/material.dart';

class Theme6 extends StatefulWidget {
  const Theme6({super.key});

  @override
  State<Theme6> createState() => _Theme6State();
}

class _Theme6State extends State<Theme6> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void _animateContainer() {
    setState(() {
      final random = Random();

      _width = random.nextInt(300).toDouble() + 50;
      _height = random.nextInt(300).toDouble() + 50;

      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme 6: Animated Container'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _animateContainer,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
