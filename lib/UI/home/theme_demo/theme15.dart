import 'package:flutter/material.dart';

class Theme15 extends StatefulWidget {
  const Theme15({super.key});

  @override
  State<Theme15> createState() => _Theme15State();
}

class _Theme15State extends State<Theme15> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
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
        title: const Text("Theme 15: Slide Transition"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SlideTransition(
          position: _slideAnimation,
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Center(
              child: ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  "Success!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Item slid in from right",
                  style: TextStyle(color: Colors.white70),
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
        backgroundColor: Colors.green,
        child: const Icon(Icons.input),
      ),
    );
  }
}
