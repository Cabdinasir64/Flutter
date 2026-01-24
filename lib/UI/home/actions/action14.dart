import 'package:flutter/material.dart';

class Action14 extends StatefulWidget {
  const Action14({super.key});

  @override
  State<Action14> createState() => _Action14State();
}

class _Action14State extends State<Action14> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  bool _isObscured = true;
  List<Map<String, String>> usersList = [];

  void _togglePasswordView() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Fadlan gali password";
    }

    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return "Shuruudaha Password-ka:\n- Ugu yaraan 8 xaraf\n- Xaraf weyn (A-Z)\n- Xaraf yar (a-z)\n- Lambar (0-9)\n- Calaamad (!@#)";
    }
    return null;
  }

  void _submitData() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        usersList.add({
          "name": _userController.text,
          "pass": _passController.text,
        });
        _userController.clear();
        _passController.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("User cusub waa la keydiyay!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 14: Advanced Form"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _userController,
                    decoration: const InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return "Gali magaca";
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _passController,
                    obscureText: _isObscured,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: _togglePasswordView,
                      ),
                    ),
                    validator: _validatePassword,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitData,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("SAVE USER"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const Text(
              "Users Saved:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.orange[50],
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        child: Text("${index + 1}"),
                      ),
                      title: Text(usersList[index]['name']!),
                      subtitle: Text("Pass: ${usersList[index]['pass']!}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
