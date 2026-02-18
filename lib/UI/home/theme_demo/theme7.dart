import 'package:flutter/material.dart';

class Theme7 extends StatefulWidget {
  const Theme7({super.key});

  @override
  State<Theme7> createState() => _Theme7State();
}

class _Theme7State extends State<Theme7> {
  bool _isVisible = true;
  Alignment _alignment =
      Alignment.topCenter; 

  void _toggleAnimation() {
    setState(() {
      _isVisible = !_isVisible;
      _alignment = _isVisible ? Alignment.topCenter : Alignment.bottomCenter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme 7: Opacity & Align'),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: _alignment,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutBack, 
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AnimatedOpacity(
                opacity: _isVisible
                    ? 1.0
                    : 0.5, 
                duration: const Duration(milliseconds: 800),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(Icons.star, color: Colors.white, size: 50),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                _isVisible ? "Wuu Muuqdaa (Top)" : "Wuu Qarsoomayaa (Bottom)",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _toggleAnimation,
        label: const Text("Animate"),
        icon: const Icon(Icons.play_arrow),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
