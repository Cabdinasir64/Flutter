import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  void showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Fariin Cusub"),
          content: const Text("Ma hubtaa inaad rabto inaad ka baxdo app-ka?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("MAYA"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("HAA"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive AppBar"),
        backgroundColor: Colors.orange[800],

        leading: IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Waxaad taabatay Information Icon!"),
                backgroundColor: Colors.orange,
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showMyDialog(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              print("Log out la taabtay");
            },
          ),
        ],
      ),
      body: const Center(child: Text("Taabo badhamada AppBar-ka dusha sare")),
    );
  }
}
