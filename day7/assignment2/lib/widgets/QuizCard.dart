import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard(
      {super.key,
      required this.quiz,
      required this.onCorrect,
      required this.onIncorrect});

  final Map<String, dynamic> quiz;
  final Function onCorrect;
  final Function onIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quiz["question"],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              itemCount: quiz["options"].length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    if (quiz["answer"] == index + 1) {
                      onCorrect();
                    } else {
                      onIncorrect();
                    }
                  },
                  child: Text(quiz["options"][index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
