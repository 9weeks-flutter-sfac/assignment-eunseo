import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  const Bubble({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const RadialGradient(
          colors: [
            Color(0xb3f7c4db),
            Color(0xb3A7ADF1),
            Color(0xb3B2E7F1),
          ],
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
