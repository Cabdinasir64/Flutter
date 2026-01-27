import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'user_details_page.dart';

class UserListPage extends StatelessWidget {
  final List<UserModel> users;
  final Function(int) onDelete;

  const UserListPage({super.key, required this.users, required this.onDelete});
  static const routeName = '/list_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: users.isEmpty
          ? const Center(child: Text("Weli ma jiro user la diiwaangeliyay."))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(child: Text(user.id.toString())),
                  title: Text(user.name),
                  subtitle: Text(user.gender),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      UserDetailsPage.routeName,
                      arguments: user,
                    );
                  },
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => onDelete(index),
                  ),
                );
              },
            ),
    );
  }
}
