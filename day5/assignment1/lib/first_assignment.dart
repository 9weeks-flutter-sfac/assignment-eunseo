import 'package:assignment1/last_assignment.dart';
import 'package:assignment1/second_assignment.dart';
import 'package:assignment1/third_assignment.dart';
import 'package:flutter/material.dart';

class FirstAssignment extends StatelessWidget {
  const FirstAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "5일차 과제",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondAssignment(),
                  ),
                );
              },
              child: const Text("2번과제"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdAssignment(),
                  ),
                );
              },
              child: const Text("3번과제"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LastAssignment(),
                  ),
                );
              },
              child: const Text("4번과제"),
            ),
          ],
        ),
      ),
    );
  }
}
