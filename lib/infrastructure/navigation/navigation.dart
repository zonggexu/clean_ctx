import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:clean_ctx/config.dart';
import 'package:clean_ctx/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:clean_ctx/infrastructure/navigation/routes.dart';
import 'package:clean_ctx/presentation/screens.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.TEST_ONE,
      page: () => const TestOneScreen(),
      binding: TestOneControllerBinding(),
    ),
    GetPage(
      name: Routes.TEST_TWO,
      page: () => const TestTwoScreen(),
      binding: TestTwoControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.TEST_THREE,
      page: () => const TestThreeScreen(),
      binding: TestThreeControllerBinding(),
    ),
  ];
}
