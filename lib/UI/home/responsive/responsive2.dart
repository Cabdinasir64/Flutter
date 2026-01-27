import 'package:flutter/material.dart';

class Responsive2 extends StatelessWidget {
  const Responsive2({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 2: Orientation"),
        backgroundColor: Colors.teal,
      ),
      body: orientation == Orientation.portrait
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_android,
                    size: 100,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Taleefanku waa TAAGAN YAHAY",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 100,
                    color: Colors.teal[100],
                    child: const Center(child: Text("Habka Portrait")),
                  ),
                ],
              ),
            )
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.stay_primary_landscape,
                    size: 150,
                    color: Colors.teal,
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Taleefanku waa JIIFAA",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 100,
                        color: Colors.teal[300],
                        child: const Center(child: Text("Habka Landscape")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
