import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final RxBool _isValid = false.obs;
  final RxnString _pw = RxnString('');
  final RxnString _pwConfirm = RxnString('');

  bool get isValid => _isValid.value;

  var emailController = TextEditingController();
  var pwController = TextEditingController(); //9자이상: ui로 컨트롤. 컨트롤러에 관련 기능 있을듯?
  var pwConfirmController = TextEditingController();
  var usernameController = TextEditingController();

  signup() {
    if (pwConfirmController.text == pwController.text) {
      Get.find<AuthController>().signUp(
        emailController.text,
        pwController.text,
        pwConfirmController.text,
        usernameController.text,
      );
    } else {
      //비밀번호가 일치하지 않습니다 에러
      print('비밀번호를 확인해주세요.');
    }
  }

  void pwChanged(String val) {
    _pw(val);
  }

  void pwConfirmChanged(String val) {
    _pwConfirm(val);
  }

  _validatePassword() {
    if (pwController.text.length >= 9 &&
        pwConfirmController.text == pwController.text) {
      _isValid(true);
    } else {
      print('비밀번호는 9글자 이상');
      _isValid(false);
    }
  }

  // @override
  // void onInit() {
  // super.onInit();
  // ever(_pw, (callback) => _validatePassword());
  // }
}
