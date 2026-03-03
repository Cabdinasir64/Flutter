import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state6.dart';
import 'package:mobile_app1/UI/home/state_examples/state6.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider6())
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
      initialRoute: '/state6',
      routes: {'/state6': (context) => State6UI()},
    );
  }
}
