import 'package:flutter/material.dart';

class Body14 extends StatelessWidget {
  const Body14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Axmed Cali"),
            subtitle: Text("Haye, iska wadaa barashada Flutter"),
            trailing: Icon(Icons.call, color: Colors.green),
          ),

          const Divider(),

          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("F"), 
            ),
            title: Text("Faadumo Jaamac"),
            subtitle: Text("Maanta casharka ListView ayaan joognaa"),
            trailing: Icon(Icons.message, color: Colors.blue),
          ),

          const Divider(),

          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Jaamac Biixi"),
            subtitle: Text("Ok, berri ayaan is arkaynaa"),
            trailing: Text("10:30 AM"),
          ),

          Container(
            margin: const EdgeInsets.all(15),
            height: 100,
            color: Colors.teal[100],
            child: const Center(
              child: Text("Kani waa Container ku dhex jira Liiska"),
            ),
          ),

          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Khaliif Maxamed"),
            subtitle: Text("Sidee tahay saaxiib?"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),

          const ListTile(title: Text("Contact kale")),
          const ListTile(title: Text("Contact kale")),
          const ListTile(title: Text("Contact kale")),
          const ListTile(title: Text("Contact kale")),
          const ListTile(title: Text("Contact kale")),
        ],
      ),
    );
  }
}
