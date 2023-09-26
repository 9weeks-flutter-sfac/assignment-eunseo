import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  const Word({
    super.key,
    required this.word,
    required this.meaning,
    required this.example,
  });
  final String word;
  final String meaning;
  final String example;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          word,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          meaning,
          style: TextStyle(
            fontSize: 16,
            letterSpacing: -1,
            color: Colors.white.withOpacity(
              0.5,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '"$example"',
          textAlign: TextAlign.center,
          style: const TextStyle(
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
