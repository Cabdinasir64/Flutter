import 'package:flutter/material.dart';

class Body4 extends StatelessWidget {
  const Body4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Advanced")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Linear Gradient",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle, 
                border: Border.all(color: Colors.black, width: 5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(child: Text("Circle")),
            ),

            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 50),
              transform: Matrix4.rotationZ(0.2), 
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Rotated Box")),
            ),
          ],
        ),
      ),
    );
  }
}
