import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:clean_ctx/generated/locales.g.dart';
import 'package:clean_ctx/infrastructure/navigation/routes.dart';

import 'package:clean_ctx/presentation/test_two/controllers/test_two.controller.dart';

class TestTwoScreen extends GetView<TestTwoController> {
  const TestTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestTwoScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CupertinoButton(
              color: Colors.purple,
              child: Text(LocaleKeys.buttons_login.tr),
              onPressed: () {
                Get.toNamed(Routes.TEST_THREE);
              },
            ),
            Obx(() {
              return Text(
                "点击次数：${controller.count}",
                style: const TextStyle(fontSize: 20),
              );
            }),
          ],
        ),
      ),
    );
  }
}
