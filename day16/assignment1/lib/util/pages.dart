import 'package:assignment1/util/routes.dart';
import 'package:assignment1/view/pages/login_page.dart';
import 'package:assignment1/view/pages/main_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.login, page: () => const LoginPage()), //미리 등록
    GetPage(name: AppRoutes.main, page: () => const MainPage()),
  ];
}
