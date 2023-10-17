import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var emailController = TextEditingController();
  var pwController = TextEditingController(); //9자이상: ui로 컨트롤. 컨트롤러에 관련 기능 있을듯?
  var pwConformController = TextEditingController();
  var usernameController = TextEditingController();

  signup() {
    if (pwConformController.text == pwController.text) {
      Get.find<AuthController>().signUp(
        emailController.text,
        pwController.text,
        usernameController.text,
      );
    } else {
      //비밀번호가 일치하지 않습니다 에러
    }
  }
}
