import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "Laptop",
      "Keyboard",
      "Mouse",
      "Monitor",
      "Phone",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.inventory_2),
              title: Text(items[index]),
              subtitle: Text("Item #${index + 1}"),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}