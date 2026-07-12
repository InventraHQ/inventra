import 'package:flutter/material.dart';
import '../widgets/inventra_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventra"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Icon(
              Icons.inventory_2_rounded,
              size: 100,
            ),

            const SizedBox(height: 20),

            const Text(
              "Inventra",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

const SizedBox(height: 10),

const Text(
  "v0.1.0 Alpha",
  style: TextStyle(
    color: Colors.grey,
  ),
),
            const SizedBox(height: 40),

            InventraButton(
              title: "Scan Item",
              icon: Icons.qr_code_scanner,
              onTap: () {},
            ),

            const SizedBox(height: 15),

            InventraButton(
              title: "Inventory",
              icon: Icons.inventory,
              onTap: () {},
            ),

            const SizedBox(height: 15),

            InventraButton(
              title: "Settings",
              icon: Icons.settings,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}