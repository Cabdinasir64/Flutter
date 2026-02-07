import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api1 extends StatefulWidget {
  const Api1({super.key});

  @override
  State<Api1> createState() => _Api1State();
}

class _Api1State extends State<Api1> {
  Future<Map<String, dynamic>> fetchPost() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw 'Server-ku wuxuu soo celiyey Error: ${response.statusCode}';
      }
    } catch (e) {
      throw 'Dhibaatadu waa: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api 1: Debugging Mode"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: FutureBuilder<Map<String, dynamic>>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 50),
                    const SizedBox(height: 10),
                    Text(
                      "${snapshot.error}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => setState(() {}),
                      child: const Text("Ku celi (Retry)"),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasData) {
              final post = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          post['title'].toString().toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Divider(),
                        Text(post['body']),
                      ],
                    ),
                  ),
                ),
              );
            }
            return const Text("Xog lama helin");
          },
        ),
      ),
    );
  }
}
