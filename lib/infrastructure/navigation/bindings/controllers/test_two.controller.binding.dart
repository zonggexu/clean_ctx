import 'package:get/get.dart';

import 'package:clean_ctx/presentation/test_two/controllers/test_two.controller.dart';

class TestTwoControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestTwoController>(() => TestTwoController(), fenix: true);
  }
}
