import 'package:flutter/material.dart';

class Navigation3 extends StatefulWidget {
  const Navigation3({super.key});

  @override
  State<Navigation3> createState() => _Navigation3State();
}

class _Navigation3State extends State<Navigation3> {
  String feedback = "Weli wax jawaab ah lama helin";

  void _getFeedback(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Navigation3Detail()),
    );

    if (result != null) {
      setState(() {
        feedback = "Jawaabta la soo celiyay waa: $result";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 3: Return Data"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              feedback,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => _getFeedback(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: const Text("AADO SCREEN-KA LABAAD"),
            ),
          ],
        ),
      ),
    );
  }
}

class Navigation3Detail extends StatelessWidget {
  const Navigation3Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dooro Mid"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "HAA"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text("DOORO HAA"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "MAYA"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("DOORO MAYA"),
            ),
          ],
        ),
      ),
    );
  }
}
