import 'package:flutter/material.dart';

class Responsive14 extends StatelessWidget {
  const Responsive14({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth > 600 ? 500 : screenWidth;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive 14: Profile AspectRatio"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: containerWidth,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/800/300'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 120,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 4),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://picsum.photos/200',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Axmed Maxamed Faarax",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Senior Flutter Developer",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _ProfileStat(label: "Posts", count: "120"),
                          _ProfileStat(label: "Followers", count: "15K"),
                          _ProfileStat(label: "Following", count: "340"),
                        ],
                      ),
                      const SizedBox(height: 30),
                      AspectRatio(
                        aspectRatio: 16 / 4,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal[50],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: ListTile(
                              leading: Icon(Icons.info, color: Colors.teal),
                              title: Text("Waqtiga Shaqada"),
                              subtitle: Text(
                                "Isniin - Jimce, 8:00 AM - 5:00 PM",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String label;
  final String count;
  const _ProfileStat({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
