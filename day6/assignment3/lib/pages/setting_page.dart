import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(
          style: ButtonStyle(
            alignment: Alignment.centerLeft,
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {},
          child: const Text(
            '차단목록',
          ),
        ),
        TextButton(
          style: ButtonStyle(
            alignment: Alignment.centerLeft,
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {},
          child: const Text(
            '벨소리설정',
          ),
        ),
        TextButton(
          style: ButtonStyle(
            alignment: Alignment.centerLeft,
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {},
          child: const Text(
            '전화통계',
          ),
        ),
      ],
    );
  }
}
