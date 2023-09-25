import 'package:assignment3/widgets/CommonBottomNav.dart';
import 'package:assignment3/widgets/CommonAppBar.dart';
import 'package:assignment3/widgets/CommonFloatingBtn.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        children: const [
          ListTile(
            title: Text('이테디'),
            trailing: Icon(Icons.call_missed),
          ),
        ],
      ),
      floatingActionButton: const CommonFloatingBtn(),
      bottomNavigationBar: const CommonBottomNav(),
    );
  }
}
