import 'package:flutter/material.dart';

class Responsive6 extends StatelessWidget {
  const Responsive6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 6: LayoutBuilder Intro"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("1. Sanduuq ballaaran (Full Width)"),
            const SizedBox(height: 10),
            _buildResponsiveBox(50),
            const SizedBox(height: 50),
            const Text("2. Sanduuq yar (Width: 150)"),
            const SizedBox(height: 10),
            SizedBox(width: 150, child: _buildResponsiveBox(150)),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveBox(double width) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 200) {
            return const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  "Booska waa uu ballaaran yahay",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            );
          } else {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.warning, color: Colors.orange),
                  Text("Boos yar", style: TextStyle(fontSize: 12)),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
