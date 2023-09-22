import 'package:assignment1/MenuTile.dart';
import 'package:flutter/material.dart';

class LastAssignment extends StatefulWidget {
  const LastAssignment({super.key});

  @override
  State<LastAssignment> createState() => _LastAssignmentState();
}

class _LastAssignmentState extends State<LastAssignment> {
  final List<Map<String, dynamic>> menus = [
    {
      "icon": Icons.sunny,
      "title": "Sun",
      "activeColor": Colors.red,
    },
    {
      "icon": Icons.nightlight,
      "title": "Moon",
      "activeColor": Colors.yellow,
    },
    {
      "icon": Icons.star,
      "title": "Star",
      "activeColor": Colors.yellow,
    },
  ];
  bool resetAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4번 과제"),
      ),
      body: Column(
        children: menus
            .map(
              (menu) => MenuTile(
                icon: menu["icon"]!,
                title: menu["title"]!,
                color: menu["activeColor"]!,
                reset: resetAll,
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resetAll = !resetAll;
          print('reset$resetAll');
          setState(() {});
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
