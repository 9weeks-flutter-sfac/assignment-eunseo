import 'package:assignment1/controller/app_setting_controller.dart';
import 'package:assignment1/controller/coin_controller.dart';
import 'package:assignment1/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appSettingController = Get.find<AppSettingController>();
    var controller = Get.find<CoinController>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '상점',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Obx(
              () => Text(
                '현재 보유한 코인: ${controller.myCoin.value.toString()}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.myCoin(
                  controller.myCoin.value = 0,
                );
              },
              child: const Text(
                'reset',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const UserPage(),
                );
              },
              child: const Text(
                '유저 페이지로 이동',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
