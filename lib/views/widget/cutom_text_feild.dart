import 'package:flutter/material.dart';

class CutsomTextFeild extends StatelessWidget {
  const CutsomTextFeild({
    super.key,
    this.hintText,
    this.maxLines,
    this.controller,
    this.validator,
    this.onsaved,
  });
  final String? hintText;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      onSaved: onsaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
