import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  final Function(String, String) onAdd;
  const AddUserPage({super.key, required this.onAdd});
  static const routeName = '/add_user';

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String? _selectedGender;

  void _submit() {
    if (_formKey.currentState!.validate() && _selectedGender != null) {
      widget.onAdd(_nameController.text, _selectedGender!);
      Navigator.pop(context); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New User"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Magaca"),
                validator: (value) =>
                    value!.isEmpty ? "Magaca waa khasab" : null,
              ),
              RadioListTile(
                title: const Text("Lab"),
                value: "Male",
                groupValue: _selectedGender,
                onChanged: (val) => setState(() => _selectedGender = val),
              ),
              RadioListTile(
                title: const Text("Dheddig"),
                value: "Female",
                groupValue: _selectedGender,
                onChanged: (val) => setState(() => _selectedGender = val),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submit,
                child: const Text("Keydi User-ka"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
