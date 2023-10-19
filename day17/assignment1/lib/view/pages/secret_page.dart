import 'package:animate_do/animate_do.dart';
import 'package:assignment1/controller/secret_controller.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:assignment1/view/widgets/Secret.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecretPage extends GetView<SecretController> {
  const SecretPage({super.key});
  static const String route = '/secret';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(title: 'shit..'),
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.8,
                    ),
                    itemCount: controller.userList?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Secret(secret: controller.userList![index].secret);
                    },
                  ),
                ),
              ),
              Expanded(
                child: ShakeY(
                  from: 10,
                  duration: const Duration(seconds: 5),
                  infinite: true,
                  child: Image.asset(
                    'assets/imgs/sleep.png',
                    width: 300,
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
