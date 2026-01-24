import 'package:flutter/material.dart';

class Action17 extends StatefulWidget {
  const Action17({super.key});

  @override
  State<Action17> createState() => _Action17State();
}

class _Action17State extends State<Action17> {
  void _openFullDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, 
      barrierColor: Colors.black.withOpacity(
        0.05,
      ), 
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.info_outline, size: 50),
          iconColor: Colors.deepPurple,

          title: const Text("Cinwaanka Dialog-ga"),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.deepPurple,
          ),

          content: const Text(
            "Halkan waa nuxurka fariinta. Waxaan isticmaalnay 'elevation', 'shape', iyo midabo kala duwan si aan u qurxino.",
          ),
          contentTextStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),

          backgroundColor: Colors.white,
          elevation: 24.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            side: const BorderSide(
              color: Colors.deepPurple,
              width: 2,
            ), 
          ),
          alignment: Alignment.center,
          actionsAlignment:
              MainAxisAlignment.spaceEvenly,
          actionsPadding: const EdgeInsets.only(
            bottom: 20,
            left: 10,
            right: 10,
          ),

          actions: [
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.grey),
              child: const Text("BEDDEL"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              child: const Text("AQBAL"), 
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
        title: const Text("Action 17: Master AlertDialog"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openFullDialog,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text("FUR DIALOG DHAMAYSTIRAN"),
        ),
      ),
    );
  }
}
