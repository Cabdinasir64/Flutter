import 'package:flutter/material.dart';

class Form2 extends StatelessWidget {
  const Form2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Advanced TextFields")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(
            maxLength: 10,
            decoration: InputDecoration(
              labelText: "Character Limit (Max 10)",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            maxLines: 4,
            minLines: 1,
            decoration: InputDecoration(
              hintText: "Multi-line Text (Auto expands)",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: "Centered Bold Text",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            cursorColor: Colors.red,
            cursorWidth: 15,
            cursorRadius: Radius.circular(10),
            decoration: InputDecoration(
              labelText: "Custom Thick Red Cursor",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: true,
            obscuringCharacter: "X",
            decoration: InputDecoration(
              labelText: "Password with 'X' Character",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              prefixText: "SOm-",
              suffixText: "@gmail.com",
              prefixStyle: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
              suffixStyle: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Disabled TextField",
              fillColor: Colors.black12,
              filled: true,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple, width: 4),
              ),
              labelText: "Custom Border Colors",
            ),
          ),
        ],
      ),
    );
  }
}
