import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'Global.dart';
import 'langs/Translation.dart';
import 'routes/app_pages.dart';
import 'theme/AppTheme.dart';

Future<void> main() async {
  await Global.init();
  runApp(
    GetMaterialApp(
      title: "GetX",
      debugShowCheckedModeBanner: true, // 是否开启debug
      initialRoute: AppPages.INITIAL, // 初始路由
      getPages: AppPages.routes, // 路由
      theme: AppTheme.LIGHT, // 主题
      locale: Translation.locale,
      fallbackLocale: Translation.fallbackLocale, // 配置错误的情况下使用语言
      translations: Translation(), // 语言
      // navigatorObservers: [AppPages.observer] // 路由守卫？
    ),
  );
}
