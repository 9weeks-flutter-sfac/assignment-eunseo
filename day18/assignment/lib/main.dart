import 'package:assignment/controller/auth_controller.dart';
import 'package:assignment/controller/login_controller.dart';
import 'package:assignment/controller/post_controller.dart';
import 'package:assignment/firebase_options.dart';
import 'package:assignment/view/page/assignment_page.dart';
import 'package:assignment/view/page/login_page.dart';
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
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => PostController());
        Get.lazyPut(() => LoginController());
      }),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(const AssignmentPage());
                  },
                  child: const Text('post page로')),
              TextButton(
                  onPressed: () {
                    Get.to(const LoginPage());
                  },
                  child: const Text('login page로')),
            ],
          ),
        ),
      ),
    );
  }
}
