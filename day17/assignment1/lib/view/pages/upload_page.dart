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
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(title: controller.isUploaded ? '비밀 접수중' : '내 비밀은'),
      body: Background(
        child: SafeArea(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                controller.isUploaded
                    ? Container()
                    : Column(
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
                                // controller.handleChangeAnonymous(true);
                              }
                              return;
                            },
                            label: '비밀접수하기',
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
