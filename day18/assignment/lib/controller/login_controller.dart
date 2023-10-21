import 'package:assignment/controller/auth_controller.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  fbLogin() {
    Get.find<AuthController>().fbLogin();
  }
}
