import 'package:assignment1/controller/app_setting_controller.dart';
import 'package:assignment1/controller/coin_controller.dart';
import 'package:assignment1/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(
      CoinController(
        myCoin: 1.obs,
      ),
    );

    var appSettingController = Get.put(AppSettingController(
      isSoundOn: false,
      isNotificationOn: false,
      appVersion: 'appVersion',
      appName: 'appName',
      appAuthor: 'appAuthor',
      appPackageName: 'appPackageName',
    ));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Current coin: ${controller.myCoin.value.toString()}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FaIcon(
              FontAwesomeIcons.bitcoin,
              color: Colors.yellow.shade700,
              size: 96,
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const ShopPage(),
                );
              },
              child: const Text(
                '상점으로 이동하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
