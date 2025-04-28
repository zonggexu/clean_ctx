import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/test_three.controller.dart';

class TestThreeScreen extends GetView<TestThreeController> {
  const TestThreeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestThreeScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TestThreeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
