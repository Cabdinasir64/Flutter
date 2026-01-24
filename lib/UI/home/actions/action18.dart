import 'package:flutter/material.dart';

class Action18 extends StatefulWidget {
  const Action18({super.key});

  @override
  State<Action18> createState() => _Action18State();
}

class _Action18State extends State<Action18> {
  String selectedLanguage = "Ma jiro";

  void _openSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("Dooro Luuqaddaada"),
          titleTextStyle: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          children: [
            SimpleDialogOption(
              onPressed: () {
                setState(() => selectedLanguage = "Af-Somali");
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Icon(Icons.language, color: Colors.blueAccent),
                  SizedBox(width: 10),
                  Text("Af-Somali"),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() => selectedLanguage = "English");
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Icon(Icons.language, color: Colors.blueAccent),
                  SizedBox(width: 10),
                  Text("English"),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() => selectedLanguage = "Arabic");
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Icon(Icons.language, color: Colors.blueAccent),
                  SizedBox(width: 10),
                  Text("Arabic"),
                ],
              ),
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
        title: const Text("Action 18: SimpleDialog"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Luuqadda aad dooratay: $selectedLanguage",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openSimpleDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              child: const Text("FUR SIMPLE DIALOG"),
            ),
          ],
        ),
      ),
    );
  }
}
