import 'package:assignment/firebase_options.dart';
import 'package:assignment/view/page/assignment_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
              onPressed: () {
                Get.to(const AssignmentPage());
              },
              child: const Text('post page로')),
        ),
      ),
    );
  }
}
