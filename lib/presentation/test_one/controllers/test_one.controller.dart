import 'package:get/get.dart';

class TestOneController extends GetxController {
  //TODO: Implement TestOneController
  RxString test = "测试事物".obs;

  RxInt count = 0.obs;

  @override
  void onReady() {
    super.onReady();
    // 延迟3秒后执行
    Future.delayed(const Duration(seconds: 3), () {
      test.value = "测试事物";
      print(test.value);
    });
  }
}
