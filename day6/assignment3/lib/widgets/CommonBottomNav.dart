import 'package:flutter/material.dart';

class CommonBottomNav extends StatefulWidget {
  const CommonBottomNav({
    super.key,
    required this.handleSetPage,
    required this.curPageIdx,
  });

  final int curPageIdx;
  final Function(int) handleSetPage;

  @override
  State<CommonBottomNav> createState() => _CommonBottomNavState();
}

class _CommonBottomNavState extends State<CommonBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: widget.handleSetPage,
      currentIndex: widget.curPageIdx,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page),
          label: '연락처',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: '통화기록',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '설정',
        ),
      ],
    );
  }
}
