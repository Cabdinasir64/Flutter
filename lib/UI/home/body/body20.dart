import 'package:flutter/material.dart';

class Body20 extends StatelessWidget {
  const Body20({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: const Text("WhatsApp"),
          foregroundColor: Colors.white,
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 15),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildChatList(),
            const Center(
              child: Text("Status Screen", style: TextStyle(fontSize: 20)),
            ),
            const Center(
              child: Text("Calls Screen", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text("User Name $index"),
          subtitle: const Text("Haye, casharkii Tabs ma fahantay?"),
          trailing: const Text("10:30 AM"),
        );
      },
    );
  }
}
