import 'package:flutter/material.dart';

class CustomValidateTextFiled extends StatelessWidget {
  const CustomValidateTextFiled({
    super.key,
    required this.controller,
    this.validator,
    required this.label,
  });

  final TextEditingController controller;
  final String label;
  final validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pinkAccent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        errorStyle: const TextStyle(color: Colors.pinkAccent),
        contentPadding: const EdgeInsets.all(16),
      ),
      style: const TextStyle(
        fontSize: 20,
      ),
      controller: controller,
      validator: validator,
    );
  }
}
