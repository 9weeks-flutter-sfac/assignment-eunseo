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
      "name": "태양",
      "activeColor": Colors.red,
      "isActive": false,
    },
    {
      "icon": Icons.nightlight,
      "title": "Moon",
      "name": "달",
      "activeColor": Colors.yellow,
      "isActive": false,
    },
    {
      "icon": Icons.star,
      "title": "Star",
      "name": "별",
      "activeColor": Colors.yellow,
      "isActive": false,
    },
  ];
  void resetTile() {
    for (var menu in menus) {
      menu["isActive"] = false;
    }
  }

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4번 과제"),
      ),
      body: Column(
        children: [
          Column(
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
          TextField(
            keyboardType: TextInputType.text,
            controller: textController,
            decoration: const InputDecoration(
              hintText: "키고 끄고싶은 아이콘을 입력하세요.",
              border: OutlineInputBorder(),
            ),
            onSubmitted: (val) {
              final targetTile = menus.firstWhere(
                  (menu) => val.toLowerCase() == menu["title"].toLowerCase());

              setState(() {
                targetTile["isActive"] = !targetTile["isActive"];
              });
            },
          ),
        ],
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
