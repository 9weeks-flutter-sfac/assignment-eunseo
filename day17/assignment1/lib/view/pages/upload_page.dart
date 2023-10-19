import 'package:animate_do/animate_do.dart';
import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/upload_controller.dart';
import 'package:assignment1/util/Alert.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:assignment1/view/widgets/CustomBtn.dart';
import 'package:assignment1/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadPage extends GetView<UploadController> {
  const UploadPage({super.key});
  static const String route = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(title: '내 비밀은'),
      body: Background(
        child: SafeArea(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: CustomTextField(
                            label: '',
                            controller: controller.secretController,
                            maxLines: 5,
                            minLines: 5,
                          ),
                        ),
                        CustomBtn(
                          onPressed: () {
                            if (controller.secretController.text != '') {
                              controller.upload();
                            }
                            return;
                          },
                          label: '비밀접수하기',
                        ),
                      ],
                    ),
                    Visibility(
                      visible: controller.isUploaded,
                      child: Pulse(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 50,
                          ),
                          width: double.infinity,
                          padding: const EdgeInsets.all(50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Text(
                            '비밀은 꼭 지켜주겠다냥!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Bounce(
                  child: Bounce(
                    animate: controller.isUploaded,
                    child: Image.asset(
                      'assets/imgs/cat.png',
                      width: 300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
