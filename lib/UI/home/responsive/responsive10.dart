import 'package:flutter/material.dart';

class Responsive10 extends StatelessWidget {
  const Responsive10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 10: OrientationBuilder"),
        backgroundColor: Colors.brown,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            padding: const EdgeInsets.all(15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: orientation == Orientation.portrait
                      ? Colors.brown[300]
                      : Colors.orange[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        orientation == Orientation.portrait
                            ? Icons.portrait
                            : Icons.landscape,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Item ${index + 1}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
