import 'package:flutter/material.dart';

class SecondAssignment extends StatelessWidget {
  SecondAssignment({super.key});

  final List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];

  final scrollController = ScrollController();
  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2번 문제"),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: animalList.length,
        itemBuilder: (BuildContext context, int i) {
          return SizedBox(
            height: 300,
            child: Center(
              child: Text(animalList[i]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: scrollToTop,
        child: const Icon(Icons.vertical_align_top),
      ),
    );
  }
}
