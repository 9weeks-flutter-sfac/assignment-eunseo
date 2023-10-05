import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0xffB2E7F1),
        fixedSize: const Size(250, 80),
        backgroundColor: const Color(0xffA7ADF1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text(
        '비밀접수하기',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
