import 'package:flutter/material.dart';

class Theme8 extends StatefulWidget {
  const Theme8({super.key});

  @override
  State<Theme8> createState() => _Theme8State();
}

class _Theme8State extends State<Theme8> with SingleTickerProviderStateMixin {
  bool _isSelected = false;
  double _fontSize = 30.0;
  Color _textColor = Colors.grey;

  late AnimationController _iconController;

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  void _handleTap() {
    setState(() {
      _isSelected = !_isSelected;
      
      _fontSize = _isSelected ? 50.0 : 30.0;
      _textColor = _isSelected ? Colors.orange : Colors.grey;

      if (_isSelected) {
        _iconController.forward();
      } else {
        _iconController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _iconController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme 8: Text & Icon Animation'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 500),
              style: TextStyle(
                fontSize: _fontSize,
                color: _textColor,
                fontWeight: _isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              child: const Text("Guji Icon-ka"),
            ),

            const SizedBox(height: 50),

            GestureDetector(
              onTap: _handleTap,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause, 
                  progress: _iconController,
                  size: 100,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}