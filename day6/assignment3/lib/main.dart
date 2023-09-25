import 'package:assignment3/pages/history_page.dart';
import 'package:assignment3/pages/main_contact.dart';
import 'package:assignment3/pages/setting_page.dart';
import 'package:assignment3/widgets/CommonAppBar.dart';
import 'package:assignment3/widgets/CommonBottomNav.dart';
import 'package:assignment3/widgets/CommonFloatingBtn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CommonAppBar(),
        body: pages[curPageIdx],
        floatingActionButton: const CommonFloatingBtn(),
        bottomNavigationBar: CommonBottomNav(
            handleSetPage: handleSetPage, curPageIdx: curPageIdx),
      ),
    );
  }
}
