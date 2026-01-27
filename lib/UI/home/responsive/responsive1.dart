import 'package:flutter/material.dart';

class Responsive1 extends StatelessWidget {
  const Responsive1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 1: MediaQuery"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Width: ${screenWidth.toStringAsFixed(1)}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Height: ${screenHeight.toStringAsFixed(1)}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.2,
              color: screenWidth > 600 ? Colors.green : Colors.red,
              child: Center(
                child: Text(
                  screenWidth > 600
                      ? "Kani waa Tablet Mode"
                      : "Kani waa Phone Mode",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
