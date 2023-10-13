import 'package:assignment1/controller/app_setting_controller.dart';
import 'package:assignment1/controller/coin_controller.dart';
import 'package:assignment1/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CoinController>();
    var appSettingController = Get.find<AppSettingController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '유저',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              appSettingController.appName,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              appSettingController.appAuthor,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Notification: ${appSettingController.isNotificationOn.toString()}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'SoundOn: ${appSettingController.isSoundOn.toString()}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const ShopPage(),
                );
              },
              child: const Text(
                '상점으로 이동',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
