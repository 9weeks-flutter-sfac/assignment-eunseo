import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile({
    super.key,
    required this.name,
    required this.call,
  });

  final String name;
  final bool call;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing:
          call ? const Icon(Icons.call_made) : const Icon(Icons.call_missed),
    );
  }
}
