import 'package:flutter_ex/views/tarbar/main_page.dart';
import 'package:get/get.dart';

import '../controller/main_page_controller.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: BindingsBuilder(() => {
            Get.lazyPut<MainPageController>(
              () => MainPageController(),
            )
          }),
    ),
    // GetPage(
    //   name: _Paths.LOGIN,
    //   page: () => const LoginView(),
    //   binding: LoginBinding(),
    // ),
  ];
}
