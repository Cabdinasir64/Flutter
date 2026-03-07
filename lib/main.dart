import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state11.dart';
import 'package:mobile_app1/UI/home/state_examples/state11.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        StreamProvider<int>(
          create: (context) => StreamLogic11().countStream(),
          initialData: 0,
        ),
        StreamProvider<String>(
          create: (context) => StreamLogic11().statusStream(),
          initialData: "Starting System...",
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/state11',
      routes: {'/state11': (context) => const State11UI()},
    );
  }
}
