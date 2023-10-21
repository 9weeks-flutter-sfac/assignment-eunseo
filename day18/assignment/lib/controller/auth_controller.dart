import 'package:assignment/view/page/assignment_page.dart';
import 'package:assignment/view/page/login_page.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final Rxn<FacebookAccessToken> _fbToken = Rxn();

  FacebookAccessToken? get token => _fbToken.value;

  fbLogin() async {
    final fb = FacebookLogin();

    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    print(res);

    if (res.status == 200) {
      _fbToken(res.accessToken);
      print(_fbToken);
      // profile = await fb.getUserProfile();
      // imageUrl = await fb.getProfileImageUrl(width: 100);
      // email = await fb.getUserEmail();
    }
  }

  logout() {}

  _handleAuthChanged(FacebookAccessToken? fbToken) {
    if (fbToken != null) {
      Get.to(const AssignmentPage());
      return;
    }
    // 로그인 페이지로 이동
    Get.to(const LoginPage());
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_fbToken, (fbToken) => _handleAuthChanged(fbToken));
  }
}
