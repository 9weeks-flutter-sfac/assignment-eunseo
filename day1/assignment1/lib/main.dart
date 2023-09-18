import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "안녕하세요.\n",
              style: TextStyle(
                color: Colors.black38,
                fontStyle: FontStyle.italic,
              ),
              children: [
                TextSpan(
                    text: "React",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " 하다가", style: TextStyle(color: Colors.black45)),
                TextSpan(
                  text: " Flutter",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  ),
                ),
                TextSpan(
                    text: "도 해보려고 공부중입니다.\n",
                    style: TextStyle(color: Colors.black45)),
                TextSpan(
                    text: "오늘 하루가 정신없이 지나갔네요.\n",
                    style: TextStyle(color: Colors.black54)),
                TextSpan(
                    text: "열심히 해서 만들고 싶은 앱을 생각한대로 구현할 수 있는\n",
                    style: TextStyle(color: Colors.black87)),
                TextSpan(
                  text: "개발자",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text: "가 되고싶어요.\n", style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "화이팅!\n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
