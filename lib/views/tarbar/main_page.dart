import 'package:flutter/material.dart';
import 'package:flutter_ex/controller/main_page_controller.dart';
import 'package:get/get.dart';

/// 页面: 主页页面带tarbar的
class MainView extends GetView<MainPageController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main.home'.tr),
        centerTitle: true,
        leading: const Icon(Icons.abc),
      ),
      body: Obx(() => IndexedStack(
          index: controller.curTab.value, children: controller.children)),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            // selectedLabelStyle: const TextStyle(color: Colors.amber, fontSize: 12
            //     // fontSize: setSp(11), //SysSize.small12,
            //     ),
            // unselectedLabelStyle: const TextStyle(
            //   color: Colors.amberAccent,
            //   // fontSize: setSp(11), //SysSize.small12,
            // ),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: controller.curTab.value,
            onTap: controller.onTab,
            items: [
              BottomNavigationBarItem(
                  label: "main.home".tr, icon: const Icon(Icons.home)),
              // icon: getItemIcon('assets/images/tab_home_grey.png'),
              // activeIcon: getItemIcon('assets/images/tab_home_selected.png')),
              BottomNavigationBarItem(
                  label: "main.market".tr, icon: const Icon(Icons.leaderboard)),
              // icon: getItemIcon('assets/images/tab_market_grey.png'),
              // activeIcon: getItemIcon('assets/images/tab_market_selected.png')),
              BottomNavigationBarItem(
                  label: "main.trade".tr, icon: const Icon(Icons.repeat)),
              // icon: getItemIcon('assets/images/tab_trade_grey.png'),
              // activeIcon: getItemIcon('assets/images/tab_trade_selected.png')),
              BottomNavigationBarItem(
                  label: "main.contract".tr, icon: const Icon(Icons.menu_book)),
              // icon: getItemIcon('assets/images/tab_contract_grey.png'),
              // activeIcon:
              // getItemIcon('assets/images/tab_contract_selected.png')),
              BottomNavigationBarItem(
                  label: "main.fund".tr,
                  icon: const Icon(Icons.account_balance_wallet))
              // icon: getItemIcon('assets/images/tab_funds_grey.png'),
              // activeIcon: getItemIcon('assets/images/tab_funds_selected.png')),
            ],
          )),
    );
  }
}
