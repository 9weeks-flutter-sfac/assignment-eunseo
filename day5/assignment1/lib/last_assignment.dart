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
      "isActive": false,
    },
    {
      "icon": Icons.nightlight,
      "title": "Moon",
      "activeColor": Colors.yellow,
      "isActive": false,
    },
    {
      "icon": Icons.star,
      "title": "Star",
      "activeColor": Colors.yellow,
      "isActive": false,
    },
  ];
  void resetTile() {
    for (var menu in menus) {
      menu["isActive"] = false;
    }
  }

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
                isActive: menu["isActive"]!,
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            resetTile();
          });
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
