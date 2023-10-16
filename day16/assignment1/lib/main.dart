import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/controller/main_controller.dart';
import 'package:assignment1/util/pages.dart';
import 'package:assignment1/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => MainController());
      }),
      getPages: AppPages.pages,
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () => Get.toNamed(LoginPage.route),
            child: const Text('Login page'),
          ),
        ),
      ),
    );
  }
}
