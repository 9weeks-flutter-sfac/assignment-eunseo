import 'package:assignment1/MenuChip.dart';
import 'package:assignment1/admin_page.dart';
import 'package:assignment1/consts/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'MenuCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String>? cart = [];
  SharedPreferences? prefs;
  var dio = Dio();

  @override
  void initState() {
    super.initState();
    initPreferences();
  }

  void initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs != null) {
      cart = prefs!.getStringList('cart');
    }
  }

  Future<Response> getMenus() async {
    var res = await dio.get(url);
    return res;
  }

  void addMenu(String item) {
    setState(() {
      cart?.add(item);
    });
    if (prefs != null) {
      prefs?.setStringList('cart', cart!); //동기화
    }
  }

  void deleteMenu(String item) {
    setState(() {
      cart?.remove(item);
    });
    if (prefs != null) {
      prefs?.setStringList('cart', cart!); //동기화
    }
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
            "👀점심 뭐먹지?",
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: getMenus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var menus = snapshot.data!.data["items"];
            return ListView(
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
                          child: cart!.isEmpty
                              ? const Text("주문할 음식을 담아주세요:)")
                              : MenuChip(
                                  menus: cart!,
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
                    GridView.builder(
                      itemCount: menus.length ?? 0,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTapDown: (details) {
                            addMenu(menus[index]["menu"]);
                          },
                          child: MenuCard(
                            image: menus[index]["imageUrl"],
                            name: menus[index]["menu"],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            );
          }
          return const CircularProgressIndicator();
        },
      ),
      // 결제버튼
      floatingActionButton: cart!.isEmpty
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
