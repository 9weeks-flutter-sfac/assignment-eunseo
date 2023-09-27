import 'package:assignment1/widget/CardList.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
  Future getData(url) async {
    var res = await dio.get(url);
    return res;
  }

  Future<void> refreshData() async {
    var newData = await getData(url);
    setState(() {
      futureData = newData;
    });
  }

  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("8일차 과제"),
          centerTitle: true,
        ),
        body: Center(
          child: CardList(
            future: futureData,
            url: url,
            refreshData: refreshData,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var res = await Connectivity().checkConnectivity();
            if (res == ConnectivityResult.mobile ||
                res == ConnectivityResult.wifi) {
              isConnected = true;
              futureData = getData(url);
              setState(() {});
            }
          },
          child: const Icon(Icons.wifi_find),
        ),
      ),
    );
  }
}
