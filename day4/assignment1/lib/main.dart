import 'package:flutter/material.dart';

import 'GetValBtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  int y = 0;

  void getX(val) {
    x = int.parse(val);
  }

  void getY(val) {
    y = int.parse(val);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '사칙연산',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text('x의 값은?'),
                  Expanded(
                    //overflow로 문제가 발생하는 것 같음
                    child: Padding(
                      //expanded를 padding으로 감싸면 하위 요소가 나타나지 않음
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: getX,
                        decoration: const InputDecoration(
                          hintText: "x값을 입력하세요.",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text('y의 값은?'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: getY,
                        decoration: const InputDecoration(
                          hintText: "y값을 입력하세요.",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            GetValBtn(
              btnText: "더하기의 결과값은?",
              res: x + y,
            ),
            const SizedBox(height: 8),
            GetValBtn(
              btnText: "곱하기의 결과값은?",
              res: x * y,
            ),
            const SizedBox(height: 8),
            GetValBtn(
              btnText: "빼기의 결과값은?",
              res: x - y,
            ),
            const SizedBox(height: 8),
            GetValBtn(
              btnText: "나누기의 결과값은?",
              res: x ~/ y,
            ),
          ],
        ),
      ),
    );
  }
}
