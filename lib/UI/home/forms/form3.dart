import 'package:flutter/material.dart';

class Form3 extends StatelessWidget {
  const Form3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Buttons Gallery")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Standard ElevatedButton"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              elevation: 10,
              shadowColor: Colors.deepPurpleAccent,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text("Styled Round Button"),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart),
            label: const Text("Add to Cart"),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Standard OutlinedButton"),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.red, width: 2),
              foregroundColor: Colors.red,
            ),
            child: const Text("Red Outlined Button"),
          ),
          const SizedBox(height: 20),
          TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {},
            child: const Text("Material 3 FilledButton"),
          ),
          const SizedBox(height: 20),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text("Tonal FilledButton"),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                color: Colors.blue,
              ),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: Colors.white,
              ),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "CUSTOM GRADIENT BUTTON",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(child: Text("InkWell (with ripple effect)")),
            ),
          ),
        ],
      ),
    );
  }
}
