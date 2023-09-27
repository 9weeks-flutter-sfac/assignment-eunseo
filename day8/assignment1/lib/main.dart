import 'package:assignment1/widget/CustomCard.dart';
import 'package:dio/dio.dart';
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
  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("8일차 과제"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder(
                  future: dio.get(
                    "https://sniperfactory.com/sfac/http_day16_dogs",
                  ),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      var res = snapshot.data?.data["body"];
                      // return CustomCard(item: res[0]);
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: res?.length,
                        itemBuilder: ((context, idx) {
                          return CustomCard(item: res[idx]);
                        }),
                      );
                    }
                    return const Center(
                      child: Column(
                        children: [
                          Text("인터넷 연결 확인중입니다"),
                          CircularProgressIndicator(),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
