
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var dio = Dio();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               FutureBuilder(
//                   future: dio.post(
//                     "https://sniperfactory.com/sfac/http_assignment_119",
//                     options: Options(
//                       headers: {
//                         "user-agent": "SniperFactoryBrowser",
//                         "authorization": "hello",
//                       },
//                     ),
//                   ),
//                   builder: (context, snapshot) {
//                     //snapshot.hasData : 데이터가 들어옴
//                     if (snapshot.connectionState == ConnectionState.done) {
//                       print(snapshot.data?.data);
//                       return Text(snapshot.data?.data.toString() ?? "실패");
//                     }
//                     // LinearProgressIndicator();
//                     return const CircularProgressIndicator();
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

