import 'package:get/get.dart';
import 'package:clean_ctx/domin/data_manager.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  final single = DataManager();

  void increment() => count.value++;

  final DataManager remote;
  LoginController(this.remote);
}
