import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 36,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
