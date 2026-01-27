import 'package:flutter/material.dart';

class AssetsManagement1 extends StatelessWidget {
  const AssetsManagement1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assets 1: Images & Icons"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "1. Icons-ka Caadiga ah (Icons)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person, size: 50, color: Colors.indigo),
                  Icon(Icons.lock, size: 50, color: Colors.green),
                  Icon(Icons.settings, size: 50, color: Colors.red),
                ],
              ),

              const Divider(height: 40),

              const Text(
                "2. Sawirka Internet-ka (NetworkImage)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: Image.network(
                  'https://images.unsplash.com/photo-1769095383888-c1fc328a81af?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                    ));
                  },
                ),
              ),

              const Divider(height: 40),

              const Text(
                "3. Sawirka Gudaha App-ka (AssetImage)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/profile.jpg',
                  width: 250,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),

              const Divider(height: 40),

              const Text(
                "4. Circle Avatar (Sawir wareegsan)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
