import 'package:assignment1/model/user.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/util/routes.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:dio/dio.dart';

class AuthController extends GetxController {
  final Rxn<User> _user = Rxn();
  Dio dio = Dio();

  User? get user => _user.value;

  login(String id, String pw) async {
    dio.options.baseUrl = 'http://52.79.115.43:8090';
    try {
      var res = await dio.post(ApiRoutes.authWithPassword, data: {
        'identity': id,
        'password': pw,
      });
      if (res.statusCode == 200) {
        var user = User.fromMap(res.data['record']);
        _user(user);
      }
    } on DioException catch (e) {
      print(e.message);
      print(e.requestOptions.path);
    }
  }

  logout() {
    _user.value = null;
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
