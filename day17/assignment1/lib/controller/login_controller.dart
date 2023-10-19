import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/util/clear_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var idController = TextEditingController();
  var pwController = TextEditingController();

  login() {
    Get.find<AuthController>().login(
      idController.text,
      pwController.text,
    );
    clearTextField([
      idController,
      pwController,
    ]);
  }
}
