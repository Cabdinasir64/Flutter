import 'package:flutter/material.dart';

class Theme17 extends StatelessWidget {
  const Theme17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme 17: Hero Animation"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Theme17Detail()),
            );
          },
          child: Hero(
            tag: 'pink-box',
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.image, color: Colors.white, size: 50),
            ),
          ),
        ),
      ),
    );
  }
}

class Theme17Detail extends StatelessWidget {
  const Theme17Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Hero(
            tag: 'pink-box',
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(color: Colors.pink),
              child: const Icon(Icons.image, color: Colors.white, size: 150),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Kani waa Hero Animation. Shayga wuxuu ka soo guuray Screen-kii hore isagoo weynaanaya.",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
