import 'package:assignment3/pages/carousel_page.dart';
import 'package:assignment3/pages/refresh_page.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        children: const [
          RefreshPage(),
          CarouselPage(),
        ],
      ),
    );
  }
}
