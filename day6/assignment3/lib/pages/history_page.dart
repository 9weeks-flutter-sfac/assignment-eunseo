import 'package:assignment3/variables/history_list.dart';
import 'package:assignment3/widgets/HistoryTile.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: historyList
          .map(
            (e) => HistoryTile(
              name: e["name"]!,
              call: e["call"]!,
            ),
          )
          .toList(),
    );
  }
}
