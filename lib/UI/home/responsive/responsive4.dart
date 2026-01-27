import 'package:flutter/material.dart';

class Responsive4 extends StatelessWidget {
  const Responsive4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double dynamicTitle = screenWidth * 0.08;
    double dynamicSubtitle = screenWidth * 0.05;
    double dynamicBody = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 4: Dynamic Text"),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kani waa Cinwaan weyn",
              style: TextStyle(
                fontSize: dynamicTitle,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Kani waa cinwaan yar oo raacaya balaca shaashadda.",
              style: TextStyle(
                fontSize: dynamicSubtitle,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Kani waa body text. Haddii aad App-ka ku tijaabiso taleefan weyn, qoraalkan wuu weynaanayaa. Haddii aad ku tijaabiso taleefan yar, qoraalku wuu yaraanayaa si uu booska u wada dego.",
              style: TextStyle(fontSize: dynamicBody),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: screenWidth * 0.15,
              color: Colors.indigo,
              child: Center(
                child: Text(
                  "BADHAN DYNAMIC AH",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: dynamicBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
