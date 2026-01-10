import 'package:flutter/material.dart';

class Body18 extends StatelessWidget {
  const Body18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Grid")),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              300, 
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1, 
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal[100 * (index % 9 + 1)],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category, color: Colors.teal[900]),
                const SizedBox(height: 10),
                Text("Item $index"),
              ],
            ),
          );
        },
      ),
    );
  }
}
