import 'package:assignment2/MenuCard.dart';
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
  final List<Map<String, String>> menus = [
    {
      "name": '떡볶이',
      "image": 'assets/option_bokki.png',
    },
    {
      "name": '맥주',
      "image": 'assets/option_beer.png',
    },
    {
      "name": '김밥',
      "image": 'assets/option_kimbap.png',
    },
    {
      "name": '오므라이스',
      "image": 'assets/option_omurice.png',
    },
    {
      "name": '돈까스',
      "image": 'assets/option_pork_cutlets.png',
    },
    {
      "name": '라면',
      "image": 'assets/option_ramen.png',
    },
    {
      "name": '우동',
      "image": 'assets/option_udon.png',
    },
  ];

  List<String> cart = [];

  void addMenu(String item) {
    // print(item);
    setState(() {
      cart.add(item);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "분식왕 이테디 주문하기",
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0, //그림자 없애기
        ),
        body: Column(
          children: [
            // 카트
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "주문 리스트",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 80,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 242, 129),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            cart.isEmpty ? "주문할 음식을 담아주세요:)" : cart.join(', '),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 메뉴판
            Column(
              children: [
                const Text(
                  "음식",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: menus.map((menu) {
                    return GestureDetector(
                      onTapDown: (details) {
                        addMenu(menu["name"]!);
                      },
                      child: MenuCard(
                        image: menu["image"]!,
                        name: menu["name"]!,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
        // 초기화버튼
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromARGB(255, 0, 104, 189),
          onPressed: () {
            setState(() {
              cart.clear();
            });
          },
          label: const Text("초기화하기"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
