import 'package:flutter/material.dart';

class Action7 extends StatefulWidget {
  const Action7({super.key});

  @override
  State<Action7> createState() => _Action7State();
}

class _Action7State extends State<Action7> {
  final TextEditingController _myController = TextEditingController();
  String displayMsg = "Ma jiro qoraal la soo diray";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Controller Action")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayMsg,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _myController,
              decoration: const InputDecoration(
                labelText: "Gali magacaaga",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        displayMsg = _myController.text;
                      });
                    },
                    child: const Text("SUBMIT"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      _myController.clear();
                      setState(() {
                        displayMsg = "Ma jiro qoraal la soo diray";
                      });
                    },
                    child: const Text("CLEAR"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
