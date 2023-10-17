import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/util/app_routes.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:assignment1/view/widgets/CustomBtn.dart';
import 'package:assignment1/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(title: '로그인'),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                label: '아이디',
                controller: controller.idController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: '비밀번호',
                controller: controller.pwController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomBtn(
                onPressed: controller.login,
                label: '로그인하기',
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () => Get.toNamed(AppRoutes.signup),
                child: const Text(
                  '회원가입하러가기',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
