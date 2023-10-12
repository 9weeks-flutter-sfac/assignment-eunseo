import 'package:assignment1/Model/location.dart';
import 'package:assignment1/Model/nation.dart';
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
  // String url = 'https://sniperfactory.com/sfac/http_json_data';
  // Address? address;
  // Nation? nation;
  // String url = 'https://random-data-api.com/api/v2/addresses';
  // String url = 'https://random-data-api.com/api/nation/random_nation';
  // String url = 'https://rickandmortyapi.com/api/location/3';
  String url = 'https://api.tablebackend.com/v1/rows/ueINwXE3KnxI';

  Dio dio = Dio();

  Future getData() async {
    setState(() {});
    var res = await dio.get(url);
    // print(res.data);
    return res.data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // Location location = Location.fromMap(snapshot.data);
                  return Column(
                    children: [
                      SizedBox(
                        height: 500,
                        child: Text(snapshot.data.toString()),
                      ),
                    ],
                  );
                }
                return Container();
              },
            ),
          ),
        ),
      ),
    );
  }
}
