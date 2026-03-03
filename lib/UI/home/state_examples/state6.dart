import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state6.dart';

class State6UI extends StatelessWidget {
  const State6UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State 6: Selector Optimization")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Selector<ProfileProvider6, String>(
              selector: (context, provider) => provider.name,
              builder: (context, name, child) {
                return Text(
                  "Name: $name",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            Selector<ProfileProvider6, int>(
              selector: (context, provider) => provider.followers,
              builder: (context, followers, child) {
                return Text(
                  "Followers: $followers",
                  style: const TextStyle(fontSize: 25, color: Colors.blue),
                );
              },
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () =>
                  context.read<ProfileProvider6>().updateName("Maxamed"),
              child: const Text("Update Name"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.read<ProfileProvider6>().addFollower(),
              child: const Text("Add Follower"),
            ),
          ],
        ),
      ),
    );
  }
}
