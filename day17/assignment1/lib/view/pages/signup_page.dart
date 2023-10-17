import 'package:assignment1/controller/signup_controller.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:assignment1/view/widgets/CustomBtn.dart';
import 'package:assignment1/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const String route = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(title: '회원가입'),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                label: 'email',
                controller: controller.emailController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: 'username',
                controller: controller.usernameController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: 'password',
                controller: controller.pwController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: 'password 확인',
                controller: controller.pwConfirmController,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomBtn(
                onPressed: controller.signup,
                label: '가입하기',
              ),
              // () => IgnorePointer(
              //   ignoring: !controller.isValid,
              //   child: CustomBtn(
              //     onPressed: () {},
              //     label: '가입하기',
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
