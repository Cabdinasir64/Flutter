import 'package:flutter/material.dart';

class Action8 extends StatefulWidget {
  const Action8({super.key});

  @override
  State<Action8> createState() => _Action8State();
}

class _Action8State extends State<Action8> {
  final TextEditingController _controller = TextEditingController();
  List<String> magacyada = [];

  void _kuDarLiiska() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        magacyada.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 8: Dynamic List"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Qor magac cusub",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _kuDarLiiska,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("KU DAR LIISKA"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Liiska Magacyada:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: magacyada.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Text("${index + 1}"),
                    ),
                    title: Text(magacyada[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
