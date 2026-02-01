import 'package:flutter/material.dart';

class Responsive11 extends StatelessWidget {
  const Responsive11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 11: Orientation Logic"),
        backgroundColor: Colors.indigo,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildPortraitLayout();
          } else {
            return _buildLandscapeLayout();
          }
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.indigo[100],
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.indigo,
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Axmed Maxamed",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text("Mobile Developer"),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.star, color: Colors.orange),
              title: Text("Project ${index + 1}"),
              subtitle: const Text("Faahfaahin ku saabsan mashruuca."),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.indigo[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.indigo,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Axmed Maxamed",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Mobile Developer",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),

        Expanded(
          flex: 3,
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: 10,
            itemBuilder: (context, index) => Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: const Icon(Icons.star, color: Colors.orange, size: 20),
                title: Text(
                  "Project ${index + 1}",
                  style: const TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Faahfaahin kooban",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
