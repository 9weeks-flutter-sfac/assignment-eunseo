// ignore_for_file: prefer_const_constructors

import 'package:assignment1/util/app_routes.dart';
import 'package:assignment1/view/pages/author_page.dart';
import 'package:assignment1/view/pages/login_page.dart';
import 'package:assignment1/view/pages/main_page.dart';
import 'package:assignment1/view/pages/secret_page.dart';
import 'package:assignment1/view/pages/signup_page.dart';
import 'package:assignment1/view/pages/upload_page.dart';
import 'package:get/get.dart';

final List<Map<String, dynamic>> navList = [
  {
    "name": 'author',
    "image": null,
    "label": '누구?',
    "page": AuthorPage(),
  },
  {
    "name": 'secret',
    "image": 'assets/imgs/sleep.png',
    "label": '어떤?',
    "page": SecretPage(),
  },
  {
    "name": 'upload',
    "image": 'assets/imgs/cat.png',
    "label": '나도..',
    "page": UploadPage(),
  },
];

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.secret, page: () => SecretPage()),
    GetPage(name: AppRoutes.author, page: () => AuthorPage()),
    GetPage(name: AppRoutes.main, page: () => MainPage()),
    GetPage(name: AppRoutes.upload, page: () => UploadPage()),
    GetPage(name: AppRoutes.login, page: () => LoginPage()),
    GetPage(name: AppRoutes.signup, page: () => SignupPage()),
  ];
}
