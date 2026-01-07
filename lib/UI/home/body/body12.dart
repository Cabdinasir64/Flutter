import 'package:flutter/material.dart';

class Body12 extends StatelessWidget {
  const Body12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Advanced Stack Properties")),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(

            clipBehavior: Clip.none,

            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.yellow, width: 2),
                  ),
                ),
              ),

              Positioned(
                top: -30, 
                left: 110,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 10),
                    ],
                  ),
                  child: Icon(Icons.star, size: 40),
                ),
              ),

              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  "Stack Fit & Clip",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
