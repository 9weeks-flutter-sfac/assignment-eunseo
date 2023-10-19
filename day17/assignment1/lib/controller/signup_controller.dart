import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/util/clear_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var pwController = TextEditingController();
  var pwConfirmController = TextEditingController();

  signup() {
    Get.find<AuthController>().signUp(
      emailController.text,
      pwController.text,
      pwConfirmController.text,
      usernameController.text,
    );
    clearTextField(
      [
        emailController,
        usernameController,
        pwController,
        pwConfirmController,
      ],
    );
  }
}
