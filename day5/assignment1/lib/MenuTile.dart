import 'package:flutter/material.dart';

class MenuTile extends StatefulWidget {
  MenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.isActive,
  });
  final IconData icon;
  final String title;
  final Color color;
  bool isActive;

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: ListTile(
        leading: Icon(
          widget.icon,
          color: widget.isActive ? widget.color : Colors.grey,
        ),
        title: Text(widget.title),
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}
