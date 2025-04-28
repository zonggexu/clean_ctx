import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:clean_ctx/domin/data_manager.dart';
import 'package:clean_ctx/infrastructure/navigation/routes.dart';

import 'package:clean_ctx/presentation/login/controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: CupertinoButton(
          color: Colors.purple,
          child: Text("测试3"),
          onPressed: () {
            controller.remote.todo();
          },
        ),
      ),
    );
  }
}
