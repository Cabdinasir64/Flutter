import 'package:flutter/material.dart';

class AssetsManagement3 extends StatefulWidget {
  const AssetsManagement3({super.key});

  @override
  State<AssetsManagement3> createState() => _AssetsManagement3State();
}

class _AssetsManagement3State extends State<AssetsManagement3> {
  @override
  void initState() {
    super.initState();
    _startAppDelay();
  }

  void _startAppDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainAppScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/profile.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to Flutter App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainAppScreen extends StatelessWidget {
  const MainAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Home"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Waa kan Screen-ka Rasmiga ah!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
