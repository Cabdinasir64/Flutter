import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api4 extends StatefulWidget {
  const Api4({super.key});

  @override
  State<Api4> createState() => _Api4State();
}

class _Api4State extends State<Api4> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  bool _isLoading = false;
  Map<String, dynamic>? _lastCreatedPost;

  Future<void> sendPost(String title, String body) async {
    setState(() {
      _isLoading = true;
      _lastCreatedPost = null;
    });

    try {
      final response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({'title': title, 'body': body, 'userId': 1}),
      );

      if (response.statusCode == 201) {
        setState(() {
          _lastCreatedPost = jsonDecode(response.body);
          _titleController.clear();
          _bodyController.clear();
        });
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api 4: Post & Retrieve"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _bodyController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Body Content",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty) {
                        sendPost(_titleController.text, _bodyController.text);
                      }
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text("SEND DATA TO SERVER"),
            ),
            const SizedBox(height: 40),
            if (_lastCreatedPost != null) _buildResponseCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildResponseCard() {
    return Card(
      color: Colors.green[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.green),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  "Xogta si guul ah ayaa loo helay!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              "ID: ${_lastCreatedPost!['id']}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Title: ${_lastCreatedPost!['title']}"),
            const SizedBox(height: 5),
            Text("Body: ${_lastCreatedPost!['body']}"),
          ],
        ),
      ),
    );
  }
}
