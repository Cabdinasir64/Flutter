import 'package:flutter/material.dart';

class Navigation4 extends StatefulWidget {
  const Navigation4({super.key});

  @override
  State<Navigation4> createState() => _Navigation4State();
}

class _Navigation4State extends State<Navigation4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 4: Named Routes"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.map, size: 100, color: Colors.purple),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: const Text("AAD SCREEN-KA (NAMED)"),
            ),
          ],
        ),
      ),
    );
  }
}

class Navigation4Detail extends StatelessWidget {
  const Navigation4Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Waxaad ku timid Named Route!"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              child: const Text("DIB U LAABO"),
            ),
          ],
        ),
      ),
    );
  }
}
