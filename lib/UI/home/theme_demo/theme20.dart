import 'package:flutter/material.dart';

class Theme20 extends StatefulWidget {
  const Theme20({super.key});

  @override
  State<Theme20> createState() => _Theme20State();
}

class _Theme20State extends State<Theme20> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade1;
  late Animation<double> _fade2;
  late Animation<double> _fade3;
  late Animation<Offset> _slide1;
  late Animation<Offset> _slide2;
  late Animation<Offset> _slide3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fade1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );
    _slide1 = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
          ),
        );

    _fade2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.7, curve: Curves.easeIn),
      ),
    );
    _slide2 = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.3, 0.7, curve: Curves.easeOut),
          ),
        );

    _fade3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeIn),
      ),
    );
    _slide3 = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.6, 1.0, curve: Curves.easeOut),
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
      appBar: AppBar(
        title: const Text("Theme 20: Staggered Animation"),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            FadeTransition(
              opacity: _fade1,
              child: SlideTransition(
                position: _slide1,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.shade100,
                  margin: const EdgeInsets.only(bottom: 20),
                ),
              ),
            ),
            FadeTransition(
              opacity: _fade2,
              child: SlideTransition(
                position: _slide2,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.shade300,
                  margin: const EdgeInsets.only(bottom: 20),
                ),
              ),
            ),
            FadeTransition(
              opacity: _fade3,
              child: SlideTransition(
                position: _slide3,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.brown.shade600,
                  margin: const EdgeInsets.only(bottom: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reset();
          _controller.forward();
        },
        backgroundColor: Colors.brown,
        child: const Icon(Icons.replay),
      ),
    );
  }
}
