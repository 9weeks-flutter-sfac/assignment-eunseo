import 'package:assignment1/controller/signup_controller.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:assignment1/view/widgets/CustomBtn.dart';
import 'package:assignment1/view/widgets/custom_validate_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const String route = '/signup';

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(title: '회원가입'),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomValidateTextFiled(
                  controller: controller.emailController,
                  label: '이메일',
                  validator: (value) {
                    if (value != null && value.contains('@')) {
                      return null;
                    }
                    return '이메일 형식이 아닙니다.';
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomValidateTextFiled(
                  controller: controller.usernameController,
                  label: '유저네임',
                  validator: (value) {
                    if (value != null && value != '') {
                      return null;
                    }
                    return '이름을 적어주세요.';
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomValidateTextFiled(
                  controller: controller.pwController,
                  label: '비밀번호',
                  validator: (value) {
                    if (value != null && value.length >= 9) {
                      return null;
                    }
                    return '비밀번호는 9글자 이상이어야 합니다.';
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomValidateTextFiled(
                  controller: controller.pwConfirmController,
                  label: '비밀번호 확인',
                  validator: (value) {
                    if (value != null &&
                        value == controller.pwController.text) {
                      return null;
                    }
                    return '비밀번호가 다릅니다.';
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomBtn(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.signup();
                    }
                  },
                  label: '가입하기',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
