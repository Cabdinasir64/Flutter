import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/task_model.dart';

class Api5 extends StatefulWidget {
  const Api5({super.key});
  @override
  State<Api5> createState() => _Api5State();
}

class _Api5State extends State<Api5> {
  final String url = "http://10.0.2.2:3000/api/tasks";
  List<Task> tasks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getTasks();
  }

  Future<void> getTasks() async {
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {"Accept": "application/json"},
      );

      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        setState(() {
          tasks = data.map((e) => Task.fromJson(e)).toList();
          isLoading = false;
        });
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> deleteTask(int id) async {
    final response = await http.delete(Uri.parse("$url/$id"));
    if (response.statusCode == 200) {
      getTasks();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Task Deleted!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : tasks.isEmpty
          ? const Center(child: Text("No Tasks Found"))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final item = tasks[index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/task-details',
                      arguments: item,
                    ).then((value) => getTasks()),
                    leading: CircleAvatar(
                      backgroundColor: item.completed
                          ? Colors.green
                          : Colors.orange,
                      child: Icon(
                        item.completed ? Icons.check : Icons.pending,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      item.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () => Navigator.pushNamed(
                            context,
                            '/add-task',
                            arguments: item,
                          ).then((_) => getTasks()),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deleteTask(item.id!),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () =>
            Navigator.pushNamed(context, '/add-task').then((_) => getTasks()),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
