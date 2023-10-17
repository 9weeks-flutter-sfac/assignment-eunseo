import 'package:animate_do/animate_do.dart';
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
      body: Background(
        child: SafeArea(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAppbar(title: controller.isUploaded ? '비밀 접수중' : '내 비밀은'),
                controller.isUploaded
                    ? Container()
                    : Column(
                        children: [
                          CustomTextField(
                            controller: controller.secretController,
                          ),
                          CustomBtn(
                            onPressed: () {
                              if (controller.secretController.text != '') {
                                controller.upload();
                                // controller.handleChangeAnonymous(true);
                              }
                              return;
                            },
                          ),
                        ],
                      ),
                controller.isUploaded
                    ? ShakeY(
                        from: 20,
                        duration: const Duration(seconds: 2),
                        child: FadeOutLeftBig(
                          animate: true,
                          duration: const Duration(seconds: 5),
                          child: Image.asset(
                            'assets/imgs/origami.png',
                          ),
                        ),
                      )
                    : Bounce(
                        child: Image.asset(
                          'assets/imgs/cat.png',
                          width: 300,
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
