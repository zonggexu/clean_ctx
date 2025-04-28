import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:clean_ctx/generated/locales.g.dart';

import 'package:clean_ctx/infrastructure/navigation/routes.dart';

import 'package:clean_ctx/presentation/test_one/controllers/test_one.controller.dart';

class TestOneScreen extends GetView<TestOneController> {
  const TestOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestOneScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CupertinoButton(
              color: Colors.purple,
              child: Text(LocaleKeys.buttons_login.tr),
              onPressed: () {
                Get.toNamed(Routes.LOGIN);
              },
            ),
            Obx(() {
              return Text(
                "点击次数：${controller.count}",
                style: const TextStyle(fontSize: 20),
              );
            }),
            CupertinoButton(
              color: Colors.purple,
              child: Text("测试2"),
              onPressed: () {
                controller.count++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
