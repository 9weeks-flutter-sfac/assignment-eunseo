import 'package:animate_do/animate_do.dart';
import 'package:assignment2/util/Alert.dart';
import 'package:assignment2/widgets/Background.dart';
import 'package:assignment2/widgets/CustomAppbar.dart';
import 'package:assignment2/widgets/CustomBtn.dart';
import 'package:assignment2/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  var controller = TextEditingController();
  bool submitSecret = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppbar(title: submitSecret ? '비밀 접수중' : '내 비밀은'),
              submitSecret
                  ? Container()
                  : Column(
                      children: [
                        CustomTextField(controller: controller),
                        CustomBtn(
                          onPressed: () {
                            var secret = controller.text;
                            print(secret);
                            if (secret != '') {
                              try {
                                SecretCatApi.addSecret(secret);
                                submitSecret = true;
                                secret = '';
                                controller.clear();
                                setState(() {});
                                Future.delayed(const Duration(seconds: 5), () {
                                  setState(() {
                                    submitSecret = false;
                                  });
                                });
                              } catch (err) {
                                alert(
                                  context,
                                  message: '에러가 발생했어요.',
                                );
                              }
                            } else {
                              alert(
                                context,
                                message: '아무 비밀도 듣지 못했어요!',
                              );
                            }
                          },
                        ),
                      ],
                    ),
              submitSecret
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
    );
  }
}
