import 'package:flutter/material.dart';

class Theme10 extends StatefulWidget {
  const Theme10({super.key});

  @override
  State<Theme10> createState() => _Theme10State();
}

class _Theme10State extends State<Theme10> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _fontSizeAnimation;
  late Animation<double> _letterSpacingAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _fontWeightAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true); 

    _fontSizeAnimation = Tween<double>(
      begin: 20,
      end: 60,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

    _letterSpacingAnimation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(_controller);

    _colorAnimation = ColorTween(
      begin: Colors.black,
      end: Colors.red,
    ).animate(_controller);

    _fontWeightAnimation = Tween<double>(begin: 1, end: 9).animate(_controller);
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
      appBar: AppBar(title: const Text("Theme 10: Deep Text Animation")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Text(
              "FLUTTER",
              style: TextStyle(
                fontSize: _fontSizeAnimation.value,

                color: _colorAnimation.value,

                letterSpacing: _letterSpacingAnimation.value,

                fontWeight: FontWeight
                    .values[(_fontWeightAnimation.value.toInt()).clamp(0, 8)],

                shadows: [
                  Shadow(
                    color: _colorAnimation.value!.withOpacity(0.5),
                    blurRadius: _fontSizeAnimation.value / 4,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
