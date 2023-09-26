import 'package:assignment2/variables/quizs.dart';
import 'package:assignment2/widgets/QuizCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<bool> score = [];
    var pageController = PageController(
      viewportFraction: 0.8,
    );

    void handlePrevQuiz() {
      pageController.previousPage(
        duration: const Duration(microseconds: 500),
        curve: Curves.easeIn,
      );
    }

    void handleNextQuiz() {
      pageController.nextPage(
        duration: const Duration(microseconds: 500),
        curve: Curves.easeIn,
      );
    }

    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pinkAccent,
              Colors.blue,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // extendBodyBehindAppBar: true, //body랑 겹치도록 함
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
                onTap: handlePrevQuiz,
                child: const Icon(Icons.navigate_before)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: score
                  .map(
                    (answer) => answer
                        ? const Icon(Icons.circle_outlined)
                        : const Icon(Icons.close),
                  )
                  .toList(),
            ),
            actions: [
              GestureDetector(
                onTap: handleNextQuiz,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.navigate_next,
                  ),
                ),
              ),
            ],
          ),
          body: PageView.builder(
            controller: pageController,
            itemCount: quizs.length,
            onPageChanged: (value) {
              handleNextQuiz();
            },
            itemBuilder: (context, idx) => QuizCard(
              quiz: quizs[idx],
              onCorrect: () {
                // score = [...score, true];
                setState(() {
                  score.add(true);
                  handleNextQuiz();
                });
              },
              onIncorrect: () {
                // score = [...score, false];
                setState(() {
                  score.add(false);
                  handleNextQuiz();
                });
              },
            ),
          ),
          floatingActionButton: quizs.length == score.length
              ? FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    score.clear();
                    pageController.jumpToPage(0);
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.black,
                  ))
              : null,
        ),
      ),
    );
  }
}
