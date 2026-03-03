import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state7.dart';
import 'package:mobile_app1/UI/home/state_examples/state7.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider7()),
        ProxyProvider<AuthProvider7, MessageProvider7>(
          update: (context, auth, previousMessage) =>
              MessageProvider7(auth.username),
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
      initialRoute: '/state7',
      routes: {'/state7': (context) => State7UI()},
    );
  }
}
