import 'package:flutter/material.dart';

import '../widgets/inventra_button.dart';
import 'scan_screen.dart';
import 'inventory/inventory_screen.dart';
import 'settings/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventra"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.inventory_2_rounded,
                  size: 55,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Welcome to Inventra",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Inventory management made simple",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              InventraButton(
                title: "Scan Item",
                icon: Icons.qr_code_scanner,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ScanScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              InventraButton(
                title: "Inventory",
                icon: Icons.inventory,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const InventoryScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              InventraButton(
                title: "Settings",
                icon: Icons.settings,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SettingsScreen(),
                    ),
                  );
                },
              ),

              const Spacer(),

              const Text(
                "Inventra v0.2.0 Dev",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
