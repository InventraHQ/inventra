import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'core/theme.dart';
void main() {
  runApp(const InventraApp());
}

class InventraApp extends StatelessWidget {
  const InventraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventra',
      debugShowCheckedModeBanner: false,
      theme: InventraTheme.dark,
      home: const HomeScreen(),
    );
  }
}