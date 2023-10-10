import 'package:assignment2/const/url.dart';
import 'package:assignment2/model/lecture.dart';
import 'package:assignment2/widget/LectureCard.dart';
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

  Future getData() async {
    var res = await dio.get(url);
    return res;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  var data = Lecture.fromMap(snapshot.data.data['item']);
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: LectureCard(
                      lecture: data,
                    ),
                  );
                }
                return const LinearProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
