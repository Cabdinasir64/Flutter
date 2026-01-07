import 'package:flutter/material.dart';

class Body15 extends StatelessWidget {
  const Body15({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> saaxiibada = [
      "Axmed Cali", "Faadumo Jaamac", "Jaamac Biixi", "Khaliif Maxamed",
      "Xaliimo Cabdi", "Cumar dhuux", "Deeqa Axmed", "Mustafe Cali"
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Advanced ListView")),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Online Friends", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, 
              itemCount: saaxiibada.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 35,
                    child: Text(saaxiibada[index][0], style: const TextStyle(color: Colors.white, fontSize: 24)), 
                  ),
                );
              },
            ),
          ),

          const Divider(thickness: 2),

          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(), 
              itemCount: saaxiibada.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(saaxiibada[index]),
                  subtitle: Text("Farriintii ugu dambaysay ee $index"),
                  onTap: () {
                    print("Waxaad taabatay ${saaxiibada[index]}");
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 10,
                  color: Colors.grey[100],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}