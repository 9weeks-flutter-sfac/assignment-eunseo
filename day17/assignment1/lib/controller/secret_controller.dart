import 'package:assignment1/model/secret.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/util/variables/basicUrl.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SecretController extends GetxController {
  final Rxn<List<Secret>> _secrets = Rxn([]);

  List<Secret>? get userList => _secrets.value;

  Dio dio = Dio();

  readSecrets() async {
    dio.options.baseUrl = url;
    try {
      var res = await dio.get(ApiRoutes.readSecrets);
      if (res.statusCode == 200) {
        var data = List<Map<String, dynamic>>.from(res.data['items']);
        _secrets(data.map((e) => Secret.fromMap(e)).toList());
      }
    } catch (e) {
      //비밀을 가져오는 데 실패했다! 쳇 들켰나...
      print(e);
    }
  }

  uploadSecrets(secret, author, authorName) async {
    dio.options.baseUrl = url;
    try {
      var res = await dio.post(ApiRoutes.uploadSecrets, data: {
        'secret': secret,
        'author': author,
        'authorName': authorName,
      });
      if (res.statusCode == 200) {
        //비밀 확인하러 가기 알럿?
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
    readSecrets();
  }
}
