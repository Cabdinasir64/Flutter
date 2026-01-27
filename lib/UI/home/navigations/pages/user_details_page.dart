import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key});
  static const routeName = '/user_details';

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBar(title: Text(user.name), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Faahfaahin Buuxda",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Text("ID: ${user.id}"),
            Text("Magaca: ${user.name}"),
            Text("Jinsiga: ${user.gender}"),
          ],
        ),
      ),
    );
  }
}
