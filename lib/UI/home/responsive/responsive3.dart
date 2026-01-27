import 'package:flutter/material.dart';

class Responsive3 extends StatelessWidget {
  const Responsive3({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    double topPadding = padding.top; 
    double bottomPadding = padding.bottom; 

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Padding(
        padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "Kani waa Header ammaan ah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Content-ka App-ka wuxuu hadda ka fog yahay Notch-ka iyo Xariiqda hoose.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 60,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "Kani waa Footer ammaan ah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
