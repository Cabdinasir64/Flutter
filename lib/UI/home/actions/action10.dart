import 'package:flutter/material.dart';

class Action10 extends StatefulWidget {
  const Action10({super.key});

  @override
  State<Action10> createState() => _Action10State();
}

class _Action10State extends State<Action10> {
  final TextEditingController _controller = TextEditingController();
  List<String> taskList = [];
  int? selectedIndex;

  void addItem() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        taskList.add(_controller.text);
        _controller.clear();
      });
    }
  }

  void prepareEdit(int index) {
    setState(() {
      _controller.text = taskList[index];
      selectedIndex = index;
    });
  }

  void updateItem() {
    if (_controller.text.isNotEmpty && selectedIndex != null) {
      setState(() {
        taskList[selectedIndex!] = _controller.text;
        _controller.clear();
        selectedIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 10: Update List Item"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Task name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: selectedIndex == null ? addItem : updateItem,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text(selectedIndex == null ? "ADD TASK" : "UPDATE TASK"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(taskList[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => prepareEdit(index),
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
