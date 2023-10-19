import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/view/widgets/NavBtns.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String route = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var authController = Get.find<AuthController>();
    return Background(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Shit.. 비밀이야',
              style: TextStyle(
                fontSize: 36,
                color: Colors.black, //로그인하면 텍스트 컬러가 red로 변경되는 에러 방지
                decoration: TextDecoration.none, //로그인하면 밑줄이 생기는 에러 방지
              ),
            ),
            Image.asset(
              'assets/imgs/fashion.png',
              width: 300,
            ),
            const SizedBox(
              height: 200,
              child: NavBtns(),
            ),
            if (authController.user != null)
              TextButton(
                onPressed: authController.logout,
                child: const Text(
                  '로그아웃하기',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
