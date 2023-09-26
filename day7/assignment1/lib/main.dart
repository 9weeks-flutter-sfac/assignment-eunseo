import 'package:assignment1/Word.dart';
import 'package:assignment1/variables/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: PageView.builder(
          controller: pageController,
          itemCount: words.length,
          itemBuilder: (context, idx) => Word(
            word: words[idx]["word"]!,
            meaning: words[idx]["meaning"]!,
            example: words[idx]["example"]!,
          ),
        ),
        //button center
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(
                      microseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                },
                child: const Icon(
                  Icons.navigate_before,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(
                      microseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                },
                child: const Icon(
                  Icons.navigate_next,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
