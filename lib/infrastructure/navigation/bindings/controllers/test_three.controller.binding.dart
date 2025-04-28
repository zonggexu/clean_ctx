import 'package:get/get.dart';

import '../../../../presentation/test_three/controllers/test_three.controller.dart';

class TestThreeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestThreeController>(
      () => TestThreeController(),
    );
  }
}
