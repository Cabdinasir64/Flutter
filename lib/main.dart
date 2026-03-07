import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state10.dart';
import 'package:mobile_app1/UI/home/state_examples/state10.dart';

void main() {
  runApp(
       MultiProvider(
      providers: [
        FutureProvider<UserModel10?>(
          create: (context) => UserApiService10().getSingleUser(),
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
      initialRoute: '/state10',
      routes: {'/state10': (context) => State10UI()},
    );
  }
}
