import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_ex/views/tarbar/contract/contract_view.dart';
import 'package:flutter_ex/views/tarbar/fund/funds_view.dart';
import 'package:flutter_ex/views/tarbar/home/home_view.dart';
import 'package:flutter_ex/views/tarbar/quotes/quotes_view.dart';
import 'package:flutter_ex/views/tarbar/trade/trade_view.dart';

class MainPageController extends GetxController {
  final curTab = 0.obs;
  // List<Widget> children = [].obs as List<Widget>;
  List<Widget> children = [
    const HomeView(),
    const QuotesView(),
    const TradeView(),
    const ContractView(),
    const FundsView()
  ];

  @override
  void onInit() {
    super.onInit();
    for (int i = 0; i < 5; i++) {
      // children.add(const HomeView());
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void increment() => count.value++;
  /// change tab
  void onTab(index) {
    curTab.value = index;
  }

  void changeLang() {
    // 改变语言
    var locale = const Locale('zh', 'CN');
    Get.updateLocale(locale);
  }
}
