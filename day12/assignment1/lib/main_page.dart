import 'package:assignment1/MenuChip.dart';
import 'package:assignment1/admin_page.dart';
import 'package:assignment1/menu_list.dart';
import 'package:flutter/material.dart';

import 'MenuCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> cart = [];

  void addMenu(String item) {
    setState(() {
      cart.add(item);
    });
  }

  void deleteMenu(String item) {
    setState(() {
      cart.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
        centerTitle: true,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AdminPage(),
              ),
            );
          },
          child: const Text(
            "분식왕 이테디 주문하기",
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0, //그림자 없애기
      ),
      body: ListView(
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
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 242, 129),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: cart.isEmpty
                        ? const Text("주문할 음식을 담아주세요:)")
                        : MenuChip(
                            menus: cart,
                            onDelete: (menu) {
                              deleteMenu(menu);
                            }),
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
      // 결제버튼
      floatingActionButton: cart.isEmpty
          ? Container()
          : FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(255, 0, 104, 189),
              onPressed: () {
                // setState(() {
                //   cart.clear();
                // });
              },
              label: const Text("결제하기"),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
