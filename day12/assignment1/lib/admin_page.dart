import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: ListView(
        children: [
          TextButton(
            style: const ButtonStyle(
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {},
            child: const Text(
              "메뉴 추가",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {},
            child: const Text(
              "메뉴 삭제",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {},
            child: const Text(
              "메뉴 수정",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
