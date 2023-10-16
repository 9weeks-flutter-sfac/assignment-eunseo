import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/model/document.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var pageController = PageController();
  RxInt curPage = 0.obs;
  List<Document>? documents;

  Dio dio = Dio();

  readDocuments() async {
    dio.options.baseUrl = 'http://52.79.115.43:8090';
    dio.options.headers['Authorization'] = Get.find<AuthController>().token;

    try {
      var res = await dio.get(ApiRoutes.authWithDocuments);
      if (res.statusCode == 200) {
        var data = List<Map<String, dynamic>>.from(res.data['items']);
        documents = data.map((e) => Document.fromMap(e)).toList();
      }
    } on DioException catch (e) {
      print(e.message);
      print(e.requestOptions.path);
    }
  }

  onPageTapped(int v) {
    pageController.jumpToPage(v);
    curPage(v);
  }

  logout() {
    Get.find<AuthController>().logout();
  }
}
