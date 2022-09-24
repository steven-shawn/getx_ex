import 'package:get/get.dart';

/// 首页组件
class HomeViewController extends GetxController {
  final HomeViewController repository;
  HomeViewController(this.repository);

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
