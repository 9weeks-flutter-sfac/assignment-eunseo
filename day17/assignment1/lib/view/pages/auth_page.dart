import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/view/pages/login_page.dart';
import 'package:assignment1/view/pages/main_page.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/NavBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBtn(
              page: LoginPage(),
              label: '로그인!',
            ),
            NavBtn(
              page: MainPage(),
              label: '비밀손님',
            ),
          ],
        ),
      ),
    );
  }
}
