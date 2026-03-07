import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state9.dart';
import 'package:mobile_app1/UI/home/state_examples/state9.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        FutureProvider<UserProfile9?>(
          create: (context) => UserApiService9().fetchUserData(),
          initialData: null,
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
      initialRoute: '/state9',
      routes: {'/state9': (context) => State9UI()},
    );
  }
}
