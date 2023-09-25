import 'package:assignment3/widgets/CommonBottomNav.dart';
import 'package:assignment3/widgets/CommonAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/CommonFloatingBtn.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: ListView(
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
      ),
      floatingActionButton: const CommonFloatingBtn(),
      bottomNavigationBar: const CommonBottomNav(),
    );
  }
}
