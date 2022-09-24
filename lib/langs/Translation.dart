import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'resouce/en_us.dart';
import 'resouce/zh_cn.dart';

/*

https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/LanguageandLocaleIDs/LanguageandLocaleIDs.html
https://www.ibabbleon.com/iOS-Language-Codes-ISO-639.html

*/

class Translation extends Translations {
  static Locale? get locale =>
      const Locale('zh', 'CN'); //Get.deviceLocale; // 获取本机语言
  static const fallbackLocale = Locale('en', 'US'); // 出错后反馈语言
  @override
  Map<String, Map<String, String>> get keys => {
        'en_us': enUS,
        'zh_cn': zhCN,
      };
}
