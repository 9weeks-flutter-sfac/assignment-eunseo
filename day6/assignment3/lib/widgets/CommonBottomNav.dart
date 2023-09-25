import 'package:assignment3/pages/history_page.dart';
import 'package:assignment3/pages/main_contact.dart';
import 'package:assignment3/pages/setting_page.dart';
import 'package:flutter/material.dart';

class CommonBottomNav extends StatefulWidget {
  const CommonBottomNav({
    super.key,
  });

  @override
  State<CommonBottomNav> createState() => _CommonBottomNavState();
}

class _CommonBottomNavState extends State<CommonBottomNav> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const MainContact(),
      const HistoryPage(),
      const SettingPage(),
    ];

    int curPageIdx = 0;

    void handleSetPage(int idx) => {
          curPageIdx = idx,
          setState(() {}),
        };

    return BottomNavigationBar(
      onTap: handleSetPage,
      currentIndex: curPageIdx,
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
