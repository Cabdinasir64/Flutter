import 'package:flutter/material.dart';

class Action15 extends StatefulWidget {
  const Action15({super.key});

  @override
  State<Action15> createState() => _Action15State();
}

class _Action15State extends State<Action15> {
  final TextEditingController _passController = TextEditingController();

  bool hasMinLength = false;
  bool hasUppercase = false;
  bool hasDigits = false;
  bool hasSpecialChar = false;

  void _checkPassword(String value) {
    setState(() {
      hasMinLength = value.length >= 8;
      hasUppercase = value.contains(RegExp(r'[A-Z]'));
      hasDigits = value.contains(RegExp(r'[0-9]'));
      hasSpecialChar = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    });
  }

  Widget _buildRequirement(String title, bool isMet) {
    return Row(
      children: [
        Icon(
          isMet ? Icons.check_circle : Icons.cancel,
          color: isMet ? Colors.green : Colors.red,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            color: isMet ? Colors.green : Colors.red,
            fontWeight: isMet ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 15: Real-time Validation"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sameyso Password Adag:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _passController,
              onChanged: _checkPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password-ka cusub",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            const SizedBox(height: 20),
            _buildRequirement("Ugu yaraan 8 xaraf", hasMinLength),
            const SizedBox(height: 8),
            _buildRequirement("Ugu yaraan hal xaraf weyn (A-Z)", hasUppercase),
            const SizedBox(height: 8),
            _buildRequirement("Ugu yaraan hal lambar (0-9)", hasDigits),
            const SizedBox(height: 8),
            _buildRequirement("Ugu yaraan hal calaamad (!@#)", hasSpecialChar),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: (hasMinLength && hasUppercase && hasDigits && hasSpecialChar)
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Password-ku waa mid aad u adag!")),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("DHAMMAYSTIR"),
            ),
          ],
        ),
      ),
    );
  }
}