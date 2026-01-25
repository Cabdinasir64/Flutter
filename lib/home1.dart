import 'package:flutter/material.dart';
import 'package:mobile_app1/UI/home/body/body1.dart';
import 'package:mobile_app1/UI/home/appBar/appBar1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(),
      body: Body1()
    );
  }
}
