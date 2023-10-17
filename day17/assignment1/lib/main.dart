import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/author_controller.dart';
import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/controller/secret_controller.dart';
import 'package:assignment1/controller/signup_controller.dart';
import 'package:assignment1/controller/upload_controller.dart';
import 'package:assignment1/util/pages.dart';
import 'package:assignment1/view/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Neo',
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => SignupController());
        Get.lazyPut(() => AuthorController());
        Get.lazyPut(() => SecretController());
        Get.lazyPut(() => UploadController());
      }),
      getPages: AppPages.pages,
      home: const Scaffold(
        body: MainPage(),
      ),
    );
  }
}
