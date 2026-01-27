import 'package:flutter/material.dart';

class Navigation7 extends StatefulWidget {
  const Navigation7({super.key});
  @override
  State<Navigation7> createState() => _Navigation7State();
}

class _Navigation7State extends State<Navigation7> {
  final List<Map<String, dynamic>> products = [
    {
      'id': 1,
      'name': 'Laptop ASUS Pro',
      'price': 1200.0,
      'description':
          'Laptop-kan waa midka ugu cusub ee lagu shaqayn karo barnaamijyada culus.',
    },
    {
      'id': 2,
      'name': 'Samsung S23 Ultra',
      'price': 950.0,
      'description':
          'Taleefan casri ah oo leh kamarad aad u sareysa iyo batteri weyn.',
    },
    {
      'id': 3,
      'name': 'Logitech Mouse',
      'price': 50.0,
      'description': 'Mouse-kan wuxuu kuu fududaynayaa shaqada si degdeg ah.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation 7: Products List"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(product['id'].toString()),
              ),
              title: Text(product['name']),
              subtitle: Text("\$${product['price'].toString()}"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/product_details',
                  arguments: product,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    if (productData == null) {
      return const Scaffold(
        body: Center(child: Text("Xogta alaabta lama helin!")),
      );
    }

    final String productName = productData['name'] ?? 'Magac la’aan';
    final double productPrice = productData['price'] ?? 0.0;
    final String productDesc =
        productData['description'] ?? 'Faahfaahin la’aan';

    return Scaffold(
      appBar: AppBar(title: Text(productName), backgroundColor: Colors.indigo),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Qiimaha: \$${productPrice.toString()}",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const Divider(height: 30),
            const Text(
              "Faahfaahin Buuxda:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(productDesc, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("DIB U LAABO"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
