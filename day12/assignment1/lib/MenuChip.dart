import 'package:flutter/material.dart';

class MenuChip extends StatefulWidget {
  const MenuChip({super.key, required this.menus, required this.onDelete});
  final List<String> menus;
  final Function(String) onDelete;

  @override
  State<MenuChip> createState() => _MenuChipState();
}

class _MenuChipState extends State<MenuChip> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: widget.menus
          .map(
            (String menu) => Chip(
              label: Text(menu),
              deleteIcon: const Icon(Icons.cancel),
              onDeleted: () {
                widget.onDelete(menu);
              },
            ),
          )
          .toList(),
    );
  }
}
