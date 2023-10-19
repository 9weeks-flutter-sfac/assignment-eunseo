import 'package:assignment1/model/user.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/util/app_routes.dart';
import 'package:assignment1/util/variables/basicUrl.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class AuthController extends GetxController {
  final Rxn<User> _user = Rxn();
  final Rxn _token = Rxn();

  Dio dio = Dio();

  User? get user => _user.value;
  String? get token => _token.value;

  logout() {
    _user.value = null;
  }

  login(String id, String pw) async {
    dio.options.baseUrl = url;

    try {
      var res = await dio.post(ApiRoutes.authWithPassword, data: {
        'identity': id,
        'password': pw,
      });
      if (res.statusCode == 200) {
        _user(User.fromMap(res.data["record"]));
        _token(res.data["token"]);
      }
    } on DioException catch (e) {
      //alert 로그인 실패
      print(e.message);
    }
  }

  signUp(String email, String pw, String pwConfirm, String? username) async {
    dio.options.baseUrl = url;

    try {
      var res = await dio.post(ApiRoutes.signUp, data: {
        'email': email,
        'password': pw,
        'passwordConfirm': pwConfirm,
        'username': username ?? '',
      });
      if (res.statusCode == 200) {
        // 로그인페이지로 이동
        Get.toNamed(AppRoutes.login);
        print('가입성공');
      }
    } on DioException catch (e) {
      print(e.message);
      print(e.response!.realUri);
    }
  }

  _handleAuthChanged(User? data) {
    if (data != null) {
      Get.toNamed(AppRoutes.main);
      return;
    }
    // 로그인 페이지로 이동
    Get.toNamed(AppRoutes.login);
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_user, _handleAuthChanged);
  }
}
