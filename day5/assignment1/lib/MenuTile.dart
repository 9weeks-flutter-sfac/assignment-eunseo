import 'package:flutter/material.dart';

class MenuTile extends StatefulWidget {
  const MenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.reset,
  });
  final IconData icon;
  final String title;
  final Color color;
  final bool reset;

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  bool isActive = false;

  void resetState() {
    isActive = !widget.reset;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.reset) {
          setState(() {
            isActive = false; // reset이 true일 때 isActive: false.
          });
        } else {
          setState(() {
            isActive = !isActive; // reset이 false일 때는 isActive 토글.
          });
        }
      },
      child: ListTile(
        leading: Icon(
          widget.icon,
          color: isActive ? widget.color : Colors.grey,
        ),
        title: Text(widget.title),
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}
