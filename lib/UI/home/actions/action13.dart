import 'package:flutter/material.dart';

class Action13 extends StatefulWidget {
  const Action13({super.key});

  @override
  State<Action13> createState() => _Action13State();
}

class _Action13State extends State<Action13> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
  bool isAccepted = false;

  void validateAll() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Dhammaan xogta waa sax"),
          backgroundColor: Colors.green,
        ),
      );
      setState(() {
        gender = null;
        isAccepted = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 13: Custom Validation"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormField<String>(
                validator: (value) {
                  if (gender == null) {
                    return "Fadlan dooro jinsigaaga";
                  }
                  return null;
                },
                builder: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Jinsiga:", style: TextStyle(fontSize: 18)),
                      RadioListTile(
                        title: const Text("Lab"),
                        value: "Male",
                        groupValue: gender,
                        onChanged: (val) {
                          setState(() {
                            gender = val;
                            state.didChange(val);
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("Dheddig"),
                        value: "Female",
                        groupValue: gender,
                        onChanged: (val) {
                          setState(() {
                            gender = val;
                            state.didChange(val);
                          });
                        },
                      ),
                      if (state.hasError)
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            state.errorText!,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              FormField<bool>(
                validator: (value) {
                  if (isAccepted == false) {
                    return "Waa inaad ogolaataa shuruudaha";
                  }
                  return null;
                },
                builder: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CheckboxListTile(
                        title: const Text("Aqbal shuruudaha"),
                        value: isAccepted,
                        onChanged: (val) {
                          setState(() {
                            isAccepted = val!;
                            state.didChange(val);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      if (state.hasError)
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            state.errorText!,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: validateAll,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("VALIDATE NOW"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
