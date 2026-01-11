import 'package:flutter/material.dart';

class Action5 extends StatefulWidget {
  const Action5({super.key});

  @override
  State<Action5> createState() => _Action5State();
}

class _Action5State extends State<Action5> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility Action"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.man, size: 100, color: Colors.white),
              ),
            ),
            
            const SizedBox(height: 50),

            Text(
              isVisible ? "WAA LA ARKI KARAA" : "WAA LA QARIYEY",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isVisible ? Colors.red : Colors.blue,
              ),
              child: Text(isVisible ? "QARI SANDUUQA" : "SOO SAAR SANDUUQA"),
            ),
          ],
        ),
      ),
    );
  }
}