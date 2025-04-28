import 'dart:math';

import 'package:flutter/material.dart';

import 'package:clean_ctx/generated/locales.g.dart';

import 'package:clean_ctx/infrastructure/navigation/navigation.dart';
import 'package:clean_ctx/infrastructure/navigation/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'infrastructure/macro/frame_macro.dart';

/// 仅限无需授权的三方初始化, 需用户授权的应等待用户同意
Future<void> loadOtherInit() async {}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadOtherInit();
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

const phoneSize = Size(375, 812);
const padSize = Size(834, 1194);

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      bool isLandscape = orientation == Orientation.landscape;
      Size deviceSize = IsIpadWithGetX(context: context) ? padSize : phoneSize;
      double w = isLandscape
          ? max(deviceSize.width, deviceSize.height)
          : min(deviceSize.width, deviceSize.height);
      double h = isLandscape
          ? min(deviceSize.width, deviceSize.height)
          : max(deviceSize.width, deviceSize.height);
      return ScreenUtilInit(
        designSize: Size(w, h),
        minTextAdapt: true,
        child: GetMaterialApp(
          initialRoute: initialRoute,
          getPages: Nav.routes,
          translationsKeys: AppTranslation.translations, // 或 translations: _
          locale: Get.deviceLocale, // 跟随系统
          fallbackLocale: const Locale('en', 'US'), // 找不到时用英文
          builder: (context, child) {
            return EnvironmentsBadge(
              child: child ?? const SizedBox(),
            );
          },
        ),
      );
    });
  }
}
