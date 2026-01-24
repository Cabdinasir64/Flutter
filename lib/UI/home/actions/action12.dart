import 'package:flutter/material.dart';

class Action12 extends StatefulWidget {
  const Action12({super.key});

  @override
  State<Action12> createState() => _Action12State();
}

class _Action12State extends State<Action12> {
  final _formKey = GlobalKey<FormState>();

  String? selectedGender;
  bool isTermsAccepted = false;
  String? selectedCity;

  List<String> cities = ["Muqdisho", "Hargeisa", "Garowe", "Kismayo", "Baidoa"];

  void submitForm() {
    if (selectedGender == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Fadlan dooro lab ama dheddig")),
      );
      return;
    }

    if (!isTermsAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Waa inaad aqbashaa shuruudaha")),
      );
      return;
    }

    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Xogta la gudbiyay"),
          content: Text("Magaalada: $selectedCity\nJinsiga: $selectedGender"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 12: Selection & Validation"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Dooro Magaalada",
                  border: OutlineInputBorder(),
                ),
                value: selectedCity,
                items: cities.map((city) {
                  return DropdownMenuItem(value: city, child: Text(city));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Fadlan dooro magaalo" : null,
              ),
              const SizedBox(height: 20),
              const Text("Dooro Jinsiga:", style: TextStyle(fontSize: 16)),
              RadioListTile(
                title: const Text("Lab"),
                value: "Male",
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
              RadioListTile(
                title: const Text("Dheddig"),
                value: "Female",
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                title: const Text("Ma aqbashay shuruudaha shaqada?"),
                value: isTermsAccepted,
                onChanged: (value) {
                  setState(() {
                    isTermsAccepted = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("SUBMIT DATA"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
