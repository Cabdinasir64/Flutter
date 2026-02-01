import 'package:flutter/material.dart';

class Responsive8 extends StatelessWidget {
  const Responsive8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 8: Dynamic Text Box"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "1. Qoraal ku jira sanduuq ballaaran:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildResponsiveTextContainer(double.infinity),
              const SizedBox(height: 40),
              const Text(
                "2. Qoraal ku jira sanduuq yar (200px):",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildResponsiveTextContainer(200),
              const SizedBox(height: 40),
              const Text(
                "3. Qoraal ku jira sanduuq aad u yar (120px):",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildResponsiveTextContainer(120),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResponsiveTextContainer(double boxWidth) {
    return Container(
      width: boxWidth,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.deepPurple[50],
        border: Border.all(color: Colors.deepPurple),
        borderRadius: BorderRadius.circular(10),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double dynamicFontSize = constraints.maxWidth * 0.1;

          if (dynamicFontSize > 30) dynamicFontSize = 30;
          if (dynamicFontSize < 12) dynamicFontSize = 12;

          return Text(
            "SCALABLE TEXT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: dynamicFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          );
        },
      ),
    );
  }
}
