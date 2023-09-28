import 'package:assignment1/widget/CardList.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
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
  late Future futureData;

  @override
  void initState() {
    super.initState();
    futureData = getData(url);
  }

  var dio = Dio();
  var url = "https://sniperfactory.com/sfac/http_day16_dogs";
  Future<Response> getData(url) async {
    var res = await dio.get(url);
    print(futureData.runtimeType);
    await Future.delayed(const Duration(seconds: 2));
    return res;
  }

  Future<void> refreshData(url) async {
    futureData = getData(url);
    setState(() {});
  }

  bool isConnected = false;
  bool connectCheck = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("8일차 과제"),
          centerTitle: true,
        ),
        body: Center(
          child: connectCheck
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('인터넷 확인 중 입니다.'),
                    CircularProgressIndicator(),
                  ],
                )
              : CardList(
                  future: futureData,
                  url: url,
                  refreshData: refreshData,
                ),
        ),
        // 인터넷 연결 확인 버튼
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            connectCheck = true;
            setState(() {});
            await Future.delayed(const Duration(seconds: 2));
            var res = await Connectivity().checkConnectivity();
            if (res == ConnectivityResult.mobile ||
                res == ConnectivityResult.wifi) {
              isConnected = true;
              refreshData(url);
              setState(() {});
            }
            connectCheck = false;
          },
          child: const Icon(Icons.wifi_find),
        ),
      ),
    );
  }
}
