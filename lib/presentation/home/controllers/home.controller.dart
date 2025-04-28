import 'package:get/get.dart';

import 'package:clean_ctx/presentation/test_one/test_one.screen.dart';
import 'package:clean_ctx/presentation/test_two/test_two.screen.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
  final pages = [const TestOneScreen(), const TestTwoScreen()];
  void changeTab(int i) => currentIndex.value = i;
}
