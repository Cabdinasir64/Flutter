import 'package:flutter/material.dart';

class Theme30 extends StatefulWidget {
  const Theme30({super.key});

  @override
  State<Theme30> createState() => _Theme30State();
}

class _Theme30State extends State<Theme30> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => CustomPaint(
                size: const Size(150, 150),
                painter: SuccessPainter(_controller.value),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Success!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text("BACK TO HOME"),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessPainter extends CustomPainter {
  final double val;
  SuccessPainter(this.val);
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      (size.width / 2) * val,
      p,
    );
  }

  @override
  bool shouldRepaint(SuccessPainter old) => true;
}
