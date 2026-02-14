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

  List<Task> allTasks = [];
  List<Task> filteredTasks = [];

  bool isLoading = true;
  String selectedFilter = "All";
  bool isAscending = true; 

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
          allTasks = data.map((e) => Task.fromJson(e)).toList();
          _applyFilter(selectedFilter);
          isLoading = false;
        });
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  void _applyFilter(String filter) {
    setState(() {
      selectedFilter = filter;
      if (filter == "All") {
        filteredTasks = allTasks;
      } else if (filter == "Completed") {
        filteredTasks = allTasks.where((task) => task.completed == true).toList();
      } else if (filter == "Pending") {
        filteredTasks = allTasks.where((task) => task.completed == false).toList();
      }
      
      _sortTasks();
    });
  }

  void _sortTasks() {
    setState(() {
      if (isAscending) {
        filteredTasks.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
      } else {
        filteredTasks.sort((a, b) => b.title.toLowerCase().compareTo(a.title.toLowerCase()));
      }
    });
  }

  void _toggleSort() {
    setState(() {
      isAscending = !isAscending;
      _sortTasks();
    });
  }

  Future<void> deleteTask(int id) async {
    final response = await http.delete(Uri.parse("$url/$id"));
    if (response.statusCode == 200) {
      getTasks();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Task Deleted!"), behavior: SnackBarBehavior.floating),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("My Tasks", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(isAscending ? Icons.sort_by_alpha : Icons.sort_by_alpha_outlined),
            onPressed: _toggleSort,
            tooltip: isAscending ? "Sort Z-A" : "Sort A-Z",
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: allTasks);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFilterChip("All", Colors.white),
                _buildFilterChip("Completed", Colors.greenAccent),
                _buildFilterChip("Pending", Colors.orangeAccent),
              ],
            ),
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : filteredTasks.isEmpty
                    ? _buildEmptyState()
                    : ListView.builder(
                        padding: const EdgeInsets.all(12),
                        itemCount: filteredTasks.length,
                        itemBuilder: (context, index) {
                          final item = filteredTasks[index];
                          return _buildTaskCard(item);
                        },
                      ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () => Navigator.pushNamed(context, '/add-task').then((_) => getTasks()),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildFilterChip(String label, Color activeColor) {
    bool isSelected = selectedFilter == label;
    return GestureDetector(
      onTap: () => _applyFilter(label),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? activeColor : Colors.indigo[400],
          borderRadius: BorderRadius.circular(20),
          boxShadow: isSelected ? [const BoxShadow(color: Colors.black26, blurRadius: 4)] : [],
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.indigo[900] : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCard(Task item) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        onTap: () => Navigator.pushNamed(context, '/task-details', arguments: item).then((value) => getTasks()),
        leading: CircleAvatar(
          backgroundColor: item.completed ? Colors.green : Colors.orange,
          child: Icon(item.completed ? Icons.check : Icons.pending, color: Colors.white),
        ),
        title: Text(
          item.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: Text(item.description, maxLines: 1, overflow: TextOverflow.ellipsis),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () => Navigator.pushNamed(context, '/add-task', arguments: item).then((_) => getTasks()),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => deleteTask(item.id!),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.assignment_late_outlined, size: 70, color: Colors.grey[400]),
          const SizedBox(height: 10),
          Text("No $selectedFilter Tasks Found", style: TextStyle(color: Colors.grey[600], fontSize: 16)),
        ],
      ),
    );
  }
}