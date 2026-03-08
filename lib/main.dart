import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mobile_app1/state_management/state14.dart';
import 'package:mobile_app1/state_management/state15.dart';
import 'package:mobile_app1/state_management/state16.dart';
import 'package:mobile_app1/state_management/state17.dart';

import 'package:mobile_app1/UI/home/state_examples/state14.dart';
import 'package:mobile_app1/UI/home/state_examples/state15.dart';
import 'package:mobile_app1/UI/home/state_examples/state16.dart';
import 'package:mobile_app1/UI/home/state_examples/state17.dart';
import 'package:mobile_app1/UI/home/state_examples/state18.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider14()),
        ChangeNotifierProvider(create: (_) => ProductProvider15()),
        ChangeNotifierProvider(create: (_) => CartProvider16()),
        ProxyProvider2<AuthProvider14, CartProvider16, OrderSummaryProvider17>(
          update: (context, auth, cart, previous) => OrderSummaryProvider17(
            customerName: auth.userName,
            subTotal: cart.totalPrice,
          ),
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
      initialRoute: '/state14',
      routes: {
        '/state14': (context) => State14UI(),
        '/state15': (context) => const State15UI(),
        '/state16': (context) => const State16UI(),
        '/state17': (context) => const State17UI(),
        '/state18': (context) => const State18UI(),
      },
    );
  }
}
