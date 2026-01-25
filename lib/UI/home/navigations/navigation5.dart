import 'package:flutter/material.dart';

class Navigation5 extends StatefulWidget {
  const Navigation5({super.key});

  @override
  State<Navigation5> createState() => _Navigation5State();
}

class _Navigation5State extends State<Navigation5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 5: Login Screen"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 100, color: Colors.redAccent),
            const SizedBox(height: 20),
            const Text("Fadlan guji badhanka si aad u gashid"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Navigation5Home(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
              child: const Text("LOGIN (REPLACE)"),
            ),
          ],
        ),
      ),
    );
  }
}

class Navigation5Home extends StatelessWidget {
  const Navigation5Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 100, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              "Hadda waxaad ku jirtaa Home-ka!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Isku day inaad 'Back' riixdo, kuma celinayo Login-kii.",
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text("Exit")),
          ],
        ),
      ),
    );
  }
}
