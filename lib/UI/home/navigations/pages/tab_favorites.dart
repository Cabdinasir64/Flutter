import 'package:flutter/material.dart';

class TabFavorites extends StatelessWidget {
  const TabFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite, size: 80, color: Colors.pink),
            Text("Favorites Screen", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
