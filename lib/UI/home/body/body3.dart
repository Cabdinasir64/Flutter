import 'package:flutter/material.dart';

class Body3 extends StatelessWidget {
  const Body3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container & Text Pro")),
      body: Container(
        width: double.infinity,
        height: 350,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.amber, width: 5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Text(
          "Flutter Developer",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            letterSpacing: 3,
            wordSpacing: 10,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amber,
            decorationStyle: TextDecorationStyle.dotted,
          ),
        ),
      ),
    );
  }
}
