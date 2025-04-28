import 'package:get/get.dart';

import 'package:clean_ctx/infrastructure/navigation/bindings/controllers/test_one.controller.binding.dart';
import 'package:clean_ctx/infrastructure/navigation/bindings/controllers/test_two.controller.binding.dart';

import 'package:clean_ctx/presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    TestOneControllerBinding().dependencies();
    TestTwoControllerBinding().dependencies();

    Get.put(HomeController());
  }
}
