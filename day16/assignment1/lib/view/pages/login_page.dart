import 'package:assignment1/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginPage extends GetView<LoginController> {
  //GetView<제네릭>을 extends
  const LoginPage({super.key});
  static const String route = '/login'; //path 정의

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.idController, //컨트롤러 연결
                decoration: const InputDecoration(
                  hintText: 'ID',
                ),
              ),
              TextField(
                controller: controller.pwController,
                decoration: const InputDecoration(
                  hintText: 'PW',
                ),
              ),
              ElevatedButton(
                onPressed: controller.login, //로그인 함수 실행
                child: const Text('로그인하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
