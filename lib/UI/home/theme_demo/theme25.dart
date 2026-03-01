import 'package:flutter/material.dart';
import 'theme26.dart';

class Theme25 extends StatefulWidget {
  const Theme25({super.key});

  @override
  State<Theme25> createState() => _Theme25State();
}

class _Theme25State extends State<Theme25> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _field1;
  late Animation<Offset> _field2;
  late Animation<double> _buttonScale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _field1 = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.2, 0.6, curve: Curves.easeOut),
          ),
        );
    _field2 = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.4, 0.8, curve: Curves.easeOut),
          ),
        );
    _buttonScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.bounceOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Hero(
              tag: 'app-logo',
              child: Icon(
                Icons.rocket_launch,
                size: 100,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 50),
            SlideTransition(
              position: _field1,
              child: const TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            const SizedBox(height: 20),
            SlideTransition(
              position: _field2,
              child: const TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 40),
            ScaleTransition(
              scale: _buttonScale,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Theme26()),
                    );
                  },
                  child: const Text("LOGIN"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
