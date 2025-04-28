import 'package:get/get.dart';

class TestTwoController extends GetxController {
  //TODO: Implement TestTwoController

  final count = 0.obs;

  void increment() => count.value++;

  void onReady() {
    super.onReady();
    // 延迟3秒后执行
    Future.delayed(const Duration(seconds: 2), () {
      print("TestTwoController onReady");
    });
  }
}
