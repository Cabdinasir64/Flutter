import 'package:flutter/material.dart';
import 'theme28.dart';

class Theme27 extends StatefulWidget {
  final int index;
  const Theme27({super.key, required this.index});

  @override
  State<Theme27> createState() => _Theme27State();
}

class _Theme27State extends State<Theme27> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fade = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product ${widget.index}")),
      body: Column(
        children: [
          Hero(
            tag: 'item-${widget.index}',
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.blueAccent.withOpacity(0.1),
              child: const Icon(
                Icons.shopping_bag,
                size: 150,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeTransition(
            opacity: _fade,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Tani waa faahfaahinta alaabta aad dooratay. Waxay u muuqataa mid aad u qurux badan.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Theme28()),
            ),
            child: const Text("GOTO PROFILE"),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
