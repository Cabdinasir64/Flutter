import 'package:flutter/material.dart';

class Theme19 extends StatelessWidget {
  const Theme19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme 19: Multiple Transitions"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 1000),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const Theme19Detail(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(
                          scale: Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOutBack,
                            ),
                          ),
                          child: child,
                        ),
                      );
                    },
              ),
            );
          },
          child: const Text(
            "Fade + Scale Transition",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Theme19Detail extends StatelessWidget {
  const Theme19Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade400,
      appBar: AppBar(
        title: const Text("Multiple Transition Detail"),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            "Screen-kan wuxuu ku soo galay Fade iyo Scale isku jira!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
