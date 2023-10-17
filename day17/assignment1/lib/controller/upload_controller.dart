import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/secret_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadController extends GetxController {
  var secretController = TextEditingController();
  final RxBool _isAnonymous = RxBool(true);
  final RxBool _isUploaded = RxBool(false);

  bool get isUploaded => _isUploaded.value;
  void get handleChangeAnonymous => _handleChangeAnonymous;

  upload() async {
    if (secretController.text != '') {
      try {
        var user = Get.find<AuthController>().user;
        if (_isAnonymous == false) {
          Get.find<SecretController>().uploadSecrets(
            secretController.text,
            user!.id,
            user.username,
          );
        } else {
          Get.find<SecretController>().uploadSecrets(
            secretController.text,
            '',
            '',
          );
        }
        _isUploaded.value = true;
        secretController.clear();
      } catch (e) {
        // 비밀을 올리지 못했다!
        print(e);
      }
    }
    _isUploaded.value = false;
  }

  _handleChangeAnonymous(bool check) {
    _isAnonymous.value = check; //checkbox로 값 받기. 토글되어야 함.
  }
}
