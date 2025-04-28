import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// 自定义Toast提示
void ShowToast({
  String message = "",
}) {
  Fluttertoast.showToast(msg: message, gravity: ToastGravity.CENTER);
}

/// loading
void ShowHUD() {
  showLoading();
}

void RemoveHUD() {
  hideLoading();
}

// 显示加载框
showLoading() {
  Get.dialog(
    const Center(
      child: SpinKitFadingCircle(
        color: Color(0xFFB39DDB), // 加载指示器颜色
        size: 50.0, // 加载指示器大小
      ),
    ),
    barrierColor: Colors.transparent, // 遮罩颜色
    barrierDismissible: false, // 禁止点击背景关闭
  );
}

// 隐藏加载框
hideLoading() {
  if (Get.isDialogOpen ?? false) {
    Get.back(); // 关闭对话框
  }
}
