import 'package:assignment1/model/user.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/util/variables/basicUrl.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthorController extends GetxController {
  final Rxn<List<User>> _userList = Rxn([]);

  List<User>? get userList => _userList.value;

  Dio dio = Dio();

  readAuthors() async {
    dio.options.baseUrl = url;
    var res = await dio.get(ApiRoutes.readUserList);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data['items']);
      _userList(data.map((e) => User.fromMap(e)).toList());
    } else {
      return [];
    }
  }

  @override
  void onInit() {
    super.onInit();
    readAuthors(); //초기 데이터 받도록 실행.
    // @todo 데이터 업데이트 될때마다 실행되어야함.: ever
  }
}
