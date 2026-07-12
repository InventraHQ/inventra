import 'package:flutter/material.dart';

class InventraButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const InventraButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 28),
        label: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}