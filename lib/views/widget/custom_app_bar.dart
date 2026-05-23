import 'package:flutter/material.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 8),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
