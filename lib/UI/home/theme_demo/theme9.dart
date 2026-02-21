import 'package:flutter/material.dart';

class Theme9 extends StatefulWidget {
  const Theme9({super.key});

  @override
  State<Theme9> createState() => _Theme9State();
}

class _Theme9State extends State<Theme9> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  final List<String> _items = ["Task 1", "Task 2", "Task 3"];

  void _addItem() {
    int index = _items.length;
    _items.add("New Task ${index + 1}");
    _listKey.currentState!.insertItem(
      index,
      duration: const Duration(milliseconds: 500),
    );
  }

  void _removeItem(int index) {
    String removedItem = _items[index];

    _listKey.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: Card(
          color: Colors.red.shade100,
          child: ListTile(title: Text("Waa la tirtiray: $removedItem")),
        ),
      );
    }, duration: const Duration(milliseconds: 500));

    _items.removeAt(
      index,
    ); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme 9: Animated List'),
        backgroundColor: Colors.indigo,
        actions: [IconButton(onPressed: _addItem, icon: const Icon(Icons.add))],
      ),
      body: AnimatedList(
        key: _listKey, 
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeOut)),
            ),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ListTile(
                title: Text(_items[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _removeItem(index),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
