import 'package:assignmnet1/first_page.dart';
import 'package:assignmnet1/width_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          FirstPage(),
          WidthPage(),
        ],
      ),
    );
  }
}
