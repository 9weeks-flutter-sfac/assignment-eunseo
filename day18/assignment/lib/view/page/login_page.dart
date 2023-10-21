import 'package:assignment/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    // backgroundColor: Color(0xff39579A),
                    ),
                onPressed: controller.fbLogin,
                child: const Row(
                  children: [
                    Icon(Icons.facebook),
                    Text('페이스북 로그인하기'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
