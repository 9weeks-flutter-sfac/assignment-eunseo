import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.minLines,
    this.maxLines,
    required this.label,
  });

  final TextEditingController controller;
  final int? minLines;
  final int? maxLines;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.black38,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffC56CB7),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.all(16),
      ),
      style: const TextStyle(
        fontSize: 20,
      ),
      controller: controller,
    );
  }
}
