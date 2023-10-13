import 'package:get/get.dart';

class CoinController extends GetxController {
  RxInt myCoin = 0.obs;

  CoinController({
    required this.myCoin,
  });

  @override
  void onInit() {
    super.onInit();
    //'변경되는동안' 1초마다 호출. 처음 트리거되는 행동이 필요하다.
    interval(
      myCoin,
      (callback) => myCoin.value += 1,
    );

    Future.delayed(const Duration(seconds: 1), () {
      increaseCoin();
    });

    ever(
      myCoin,
      (callback) => (myCoin % 10 == 0) && (myCoin != 0)
          ? Get.snackbar('코인 $myCoin개 돌파', '축하합니다!')
          : null,
    );
  }

  void increaseCoin() {
    myCoin.value += 1;
  }
}
