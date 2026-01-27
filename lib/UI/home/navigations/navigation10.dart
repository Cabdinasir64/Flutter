import 'package:flutter/material.dart';
import 'models/user_model.dart';
import 'pages/list_page.dart';
import 'pages/add_user_page.dart';

class Navigation10 extends StatefulWidget {
  const Navigation10({super.key});

  @override
  State<Navigation10> createState() => _Navigation10State();
}

class _Navigation10State extends State<Navigation10> {
  List<UserModel> _users = [];
  int _nextId = 1;

  void _addNewUser(String name, String gender) {
    setState(() {
      _users.add(UserModel(id: _nextId, name: name, gender: gender));
      _nextId++;
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("$name waa la diiwaangeliyay!")));
  }

  void _deleteUser(int index) {
    String name = _users[index].name;
    setState(() {
      _users.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$name waa la tirtiray!"),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 21: Final App (User Manager)"),
        backgroundColor: Colors.indigo,
      ),
      body: UserListPage(
        users: _users,
        onDelete: _deleteUser,
      ), 

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUserPage(onAdd: _addNewUser),
            ),
          );
        },
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
