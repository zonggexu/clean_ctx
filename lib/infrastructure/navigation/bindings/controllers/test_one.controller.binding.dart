import 'package:get/get.dart';

import 'package:clean_ctx/presentation/test_one/controllers/test_one.controller.dart';

class TestOneControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestOneController>(() => TestOneController(), fenix: true);
  }
}
