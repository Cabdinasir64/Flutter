import 'package:flutter/material.dart';

class Action16 extends StatefulWidget {
  const Action16({super.key});

  @override
  State<Action16> createState() => _Action16State();
}

class _Action16State extends State<Action16> {
  void _showMyAlertDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xaqiijin"),
          content: const Text("Ma hubtaa inaad rabto inaad tirtirto xogtan?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("MAYA"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("HAA", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  void _showMySimpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("Dooro Luuqadda"),
          children: [
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text("Af-Somali"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text("English"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text("Arabic"),
            ),
          ],
        );
      },
    );
  }

  void _showMyBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 250,
          child: Column(
            children: [
              const Text(
                "Options",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text("Share to friends"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.copy),
                title: const Text("Copy link"),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 16: Feedback UI"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _showMyAlertDialog,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("OPEN ALERT DIALOG"),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _showMySimpleDialog,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text("OPEN SIMPLE DIALOG"),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _showMyBottomSheet,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text("OPEN BOTTOM SHEET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
