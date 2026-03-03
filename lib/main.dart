import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state8.dart';
import 'package:mobile_app1/UI/home/state_examples/state8.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider8()),
        ChangeNotifierProvider(create: (_) => CartProvider8()),
        ProxyProvider2<UserProvider8, CartProvider8, OrderSummaryProvider8>(
          update: (context, user, cart, previous) => OrderSummaryProvider8(
            isPremiumUser: user.isPremium,
            cartAmount: cart.subTotal,
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
      initialRoute: '/state8',
      routes: {'/state8': (context) => State8UI()},
    );
  }
}
