// 추가 코드를 작성할 것. 본 소스는 디자인만 작성되어 있으며
// 이 기본 틀을 통하여 과제에 필요한 소스코드를 추가적으로 구현할 것.
import 'package:assignment3/model/dict.dart';
import 'package:assignment3/widget/meaning_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Dict>? dict = [];
  String word = '';
  searchWord(String word) async {
    Dio dio = Dio();
    String url = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
    try {
      var res = await dio.get(url + word);
      var data = List<Map<String, dynamic>>.from(res.data); //1. MapList로 변경
      dict = data.map((e) => Dict.fromMap(e)).toList(); //2. 직렬화
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary App'),
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        onSubmitted: (value) {
                          dict = []; //초기화
                          word = value;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: searchWord(word),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (dict!.isNotEmpty) {
                    return Column(
                      children: dict!
                          .map(
                            (singleDict) => MeaningCard(dict: singleDict),
                          )
                          .toList(),
                    );
                  } else {
                    return const Text('');
                  }
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
