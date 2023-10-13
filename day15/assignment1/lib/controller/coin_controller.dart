import 'package:get/get.dart';

class CoinController extends GetxController {
  RxInt myCoin = 1.obs;

  CoinController({
    required this.myCoin,
  });

  @override
  void onInit() {
    super.onInit();
    interval(
      myCoin,
      (callback) => myCoin.value += 1,
    );
    ever(
      myCoin,
      (callback) => (myCoin % 10 == 0) && (myCoin != 0)
          ? Get.snackbar('코인 $myCoin개 돌파', '축하합니다!')
          : null,
    );
  }

//Timer를 사용할 수 있도록 한다.
//코인이 10의 배수가 될때, 코인 10n개를 달성했다는 안내문구를 출력하도록 한다.
  CoinController.showSnackBar(val) {
    if (val % 10 == 0) {
      Get.snackbar('코인 $val개 돌파', '축하합니다!');
      return;
    }
    return;
  }
}
