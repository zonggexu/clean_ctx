import 'package:get/get.dart';
import 'package:clean_ctx/domin/data_manager.dart';

import 'package:clean_ctx/presentation/login/controllers/login.controller.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataManager>(
      () => DataManager(),
    );

    Get.lazyPut<LoginController>(
      () => LoginController(Get.find()),
    );
  }
}
