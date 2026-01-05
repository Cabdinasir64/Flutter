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

        // 1. leading: Markii la taabto SnackBar ha soo saaro
        leading: IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {
            // SnackBar: Waa fariin yar oo hoos ka soo baxda
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Waxaad taabatay Information Icon!"),
                backgroundColor: Colors.orange,
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),

        // 2. actions: Markii la taabto Dialog (Daaqad) ha soo saaro
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Halkan waxaan ugu yeeraynaa function-ka kore ee showMyDialog
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
