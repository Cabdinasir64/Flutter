import 'package:flutter/material.dart';

class Responsive7 extends StatelessWidget {
  const Responsive7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 7: Fixed Overflow"),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                "1. Wide Space (Ballac dhan)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildAdaptiveProfile(),
              const SizedBox(height: 40),
              const Text(
                "2. Narrow Space (180px)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(width: 180, child: _buildAdaptiveProfile()),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdaptiveProfile() {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 300) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Axmed Maxamed",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Software Developer",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("Muqdisho, Somalia"),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, size: 30, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  "Axmed Maxamed",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Developer",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 5),
                Icon(Icons.location_on, size: 14, color: Colors.orange),
              ],
            ),
          );
        }
      },
    );
  }
}
