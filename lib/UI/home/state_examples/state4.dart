import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state4.dart';

class State4UI extends StatelessWidget {
  const State4UI({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsProvider4>();

    return Scaffold(
      backgroundColor: settings.isDarkMode ? Colors.black87 : Colors.white,
      appBar: AppBar(title: const Text("State 4: User Settings")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, ${settings.username}",
              style: TextStyle(
                fontSize: settings.fontSize,
                color: settings.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("Dark Mode"),
              textColor: settings.isDarkMode ? Colors.white : Colors.black,
              trailing: Switch(
                value: settings.isDarkMode,
                onChanged: (value) =>
                    context.read<SettingsProvider4>().toggleTheme(),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Font Size: ${settings.fontSize.toInt()}",
              style: TextStyle(
                color: settings.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            Slider(
              value: settings.fontSize,
              min: 12,
              max: 40,
              onChanged: (value) =>
                  context.read<SettingsProvider4>().updateFontSize(value),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Change Username",
                labelStyle: TextStyle(
                  color: settings.isDarkMode ? Colors.white : Colors.black,
                ),
                border: const OutlineInputBorder(),
              ),
              style: TextStyle(
                color: settings.isDarkMode ? Colors.white : Colors.black,
              ),
              onSubmitted: (value) =>
                  context.read<SettingsProvider4>().updateName(value),
            ),
          ],
        ),
      ),
    );
  }
}
