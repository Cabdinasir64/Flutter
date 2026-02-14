import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/task_model.dart';

class Api5Form extends StatefulWidget {
  const Api5Form({super.key});
  @override
  State<Api5Form> createState() => _Api5FormState();
}

class _Api5FormState extends State<Api5Form> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  bool isEdit = false;
  int? taskId;
  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isInitialized) {
      final task = ModalRoute.of(context)!.settings.arguments as Task?;
      if (task != null) {
        isEdit = true;
        taskId = task.id;
        _titleController.text = task.title;
        _descController.text = task.description;
        print("Editing Task ID: $taskId");
      }
      _isInitialized = true;
    }
  }

  Future<void> saveTask() async {
    if (_formKey.currentState!.validate()) {
      const String url = "http://10.0.2.2:3000/api/tasks";

      final data = {
        "title": _titleController.text,
        "description": _descController.text,
        "completed": false,
      };

      try {
        if (isEdit && taskId != null) {
          print("Diri rabaa PUT request: $url/$taskId");
          final response = await http.put(
            Uri.parse("$url/$taskId"),
            body: json.encode(data),
            headers: {"Content-Type": "application/json"},
          );

          if (response.statusCode == 200) {
            print("Update Success");
          }
        } else {
          print("Diri rabaa POST request: $url");
          final response = await http.post(
            Uri.parse(url),
            body: json.encode(data),
            headers: {"Content-Type": "application/json"},
          );

          if (response.statusCode == 201) {
            print("Create Success");
          }
        }

        if (mounted) Navigator.pop(context);
      } catch (e) {
        print("Error saving task: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Task" : "Add New Task"),
        backgroundColor: isEdit ? Colors.orange : Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Task Title",
                  prefixIcon: const Icon(Icons.title),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (v) => v!.isEmpty ? "Fadlan gali title" : null,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _descController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Description",
                  prefixIcon: const Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (v) => v!.isEmpty ? "Fadlan gali description" : null,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isEdit ? Colors.orange : Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: saveTask,
                  child: Text(
                    isEdit ? "Update Now" : "Save Task",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
