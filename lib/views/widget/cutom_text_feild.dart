import 'package:flutter/material.dart';

class CutsomTextFeild extends StatelessWidget {
  const CutsomTextFeild({
    super.key,
    this.hintText,
    this.maxLines,
    this.controller,
  });
  final String? hintText;
  final int? maxLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
