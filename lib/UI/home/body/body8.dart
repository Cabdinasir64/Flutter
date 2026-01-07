import 'package:flutter/material.dart';

class Body8 extends StatelessWidget {
  const Body8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Advanced")),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
            ),
          ),

          SizedBox(height: 30),

          Row(
            children: [
              Container(width: 50, height: 50, color: Colors.red),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text(
                    "Kani waa qoraal aad u dheer oo haddii aan Expanded la isticmaalin shaashadda ka bixi lahaa!",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),

          SizedBox(height: 30),

          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(width: 60, height: 50, color: Colors.white),
              SizedBox(width: 10),
              Text("Magaca iyo Icon-ka waa la isku beddelay"),
              SizedBox(width: 10),
              Icon(Icons.person),
            ],
          ),
        ],
      ),
    );
  }
}
