import 'package:flutter/material.dart';

class ThirdAssignment extends StatefulWidget {
  const ThirdAssignment({super.key});

  @override
  State<ThirdAssignment> createState() => _ThirdAssignmentState();
}

class _ThirdAssignmentState extends State<ThirdAssignment> {
  var textController = TextEditingController();

  var userTxt = '';
  void getText(val) {
    userTxt = textController.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3번 문제"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
            onChanged: getText,
          ),
          Text(userTxt),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textController.clear();
          userTxt = '';
          setState(() {});
        },
        child: const Icon(
          Icons.close,
        ),
      ),
    );
  }
}
