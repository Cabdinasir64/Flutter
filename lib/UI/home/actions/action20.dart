import 'package:flutter/material.dart';

class Action20 extends StatefulWidget {
  const Action20({super.key});

  @override
  State<Action20> createState() => _Action20State();
}

class _Action20State extends State<Action20> {
  void _showAdvancedSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 10),
            Text("Xogta si guul ah ayaa loo keydiyay!"),
          ],
        ),
        backgroundColor: Colors.indigo,
        duration: const Duration(seconds: 5),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 10,
        showCloseIcon: true,
        closeIconColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        action: SnackBarAction(
          label: "KALA NOQO",
          textColor: Colors.yellow,
          onPressed: () {
            print("Action-kii waa la baajiyay!");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 20: Master SnackBar"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showAdvancedSnackBar,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          child: const Text("FUR SNACKBAR DHAMAYSTIRAN"),
        ),
      ),
    );
  }
}
