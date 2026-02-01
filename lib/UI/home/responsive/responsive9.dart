import 'package:flutter/material.dart';

class Responsive9 extends StatelessWidget {
  const Responsive9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 9: Adaptive Grid"),
        backgroundColor: Colors.blueGrey,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int columnCount = 1;

          if (constraints.maxWidth > 400) {
            columnCount = 2;
          }

          if (constraints.maxWidth > 700) {
            columnCount = 3;
          }

          return GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.blueGrey[50],
                child: Center(
                  child: ListTile(
                    leading: const Icon(
                      Icons.shopping_bag,
                      color: Colors.blueGrey,
                    ),
                    title: Text("Product ${index + 1}"),
                    subtitle: const Text("\$100.00"),
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
