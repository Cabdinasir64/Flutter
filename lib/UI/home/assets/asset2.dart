import 'package:flutter/material.dart';

class AssetsManagement2 extends StatelessWidget {
  const AssetsManagement2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assets 2: Decoration & BoxFit"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "1. Sawirka Gudaha Container (DecorationImage)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Divider(height: 40),

            const Text(
              "2. Sawirka oo ku jira Column/Row (Squeeze)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Text("Sawirka: ", style: TextStyle(fontSize: 16)),
                  Image.asset('assets/profile.jpg', height: 50),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Text(
                      "Qoraal dheer oo wata Sawir yar.",
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 40),

            const Text(
              "3. Sawirka oo la Fidinayo (Expanded / Responsive)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow[50],
              child: SizedBox(
                height: 150,
                child: Row(
                  children: [
                    Expanded(
                      flex: 7, 
                      child: Image.network(
                        'https://picsum.photos/400/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 3, 
                      child: Container(
                        color: Colors.teal[100],
                        child: const Center(child: Text("30%")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sawirka kor ku xusan wuxuu qaadanayaa 70% booska safka (Row-ga).",
            ),
          ],
        ),
      ),
    );
  }
}
