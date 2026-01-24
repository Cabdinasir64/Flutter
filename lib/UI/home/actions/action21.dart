import 'package:flutter/material.dart';

class Action21 extends StatefulWidget {
  const Action21({super.key});

  @override
  State<Action21> createState() => _Action21State();
}

class _Action21State extends State<Action21> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String? _selectedGender;
  final List<Map<String, String>> _users = [];
  int? _editingIndex;

  void _saveUser() {
    if (_formKey.currentState!.validate() && _selectedGender != null) {
      String name = _nameController.text;
      setState(() {
        if (_editingIndex == null) {
          _users.add({"name": name, "gender": _selectedGender!});
          _showSnackBar("$name waa lagu daray", Colors.green);
        } else {
          _users[_editingIndex!] = {"name": name, "gender": _selectedGender!};
          _showSnackBar("$name waa la cusboonaysiiyay", Colors.orange);
          _editingIndex = null;
        }
        _nameController.clear();
        _selectedGender = null;
      });
    } else if (_selectedGender == null) {
      _showSnackBar("Fadlan dooro Jinsiga", Colors.red);
    }
  }

  void _prepareEdit(int index) {
    setState(() {
      _editingIndex = index;
      _nameController.text = _users[index]['name']!;
      _selectedGender = _users[index]['gender'];
    });
  }

  void _deleteUser(int index) {
    String deletedName = _users[index]['name']!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Ma hubtaa?"),
        content: Text("Ma rabtaa inaad tirtirto $deletedName?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("MAYA"),
          ),
          TextButton(
            onPressed: () {
              setState(() => _users.removeAt(index));
              Navigator.pop(context);
              _showSnackBar("$deletedName waa la tirtiray", Colors.redAccent);
            },
            child: const Text("HAA", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(String msg, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Manager Pro"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "Magaca User-ka",
                      border: const OutlineInputBorder(),
                      prefixIcon: Icon(
                        _editingIndex == null ? Icons.person_add : Icons.edit,
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Fadlan magac qor" : null,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: const Text("Lab"),
                          value: "Male",
                          groupValue: _selectedGender,
                          onChanged: (val) =>
                              setState(() => _selectedGender = val),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: const Text("Dheddig"),
                          value: "Female",
                          groupValue: _selectedGender,
                          onChanged: (val) =>
                              setState(() => _selectedGender = val),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: _saveUser,
                    icon: Icon(
                      _editingIndex == null ? Icons.add : Icons.update,
                    ),
                    label: Text(
                      _editingIndex == null ? "KU DAR LIISKA" : "CUSBOONAYSIYI",
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: _editingIndex == null
                          ? Colors.indigo
                          : Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "USER-YADA DIIWAANGASHAN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Badge(
                  label: Text("${_users.length}"),
                  child: const Icon(Icons.people),
                ),
              ],
            ),
            const Divider(),
            Expanded(
              child: _users.isEmpty
                  ? const Center(child: Text("Ma jiro qof la diiwaangeliyay"))
                  : ListView.builder(
                      itemCount: _users.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 3,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.indigo,
                              child: Text(
                                "${index + 1}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            title: Text(
                              _users[index]['name']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Jinsiga: ${_users[index]['gender']}",
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () => _prepareEdit(index),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => _deleteUser(index),
                                ),
                              ],
                            ),
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
