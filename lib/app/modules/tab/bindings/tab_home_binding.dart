import 'package:get/get.dart';
import '../../what_to_eat/index.dart';
import '../../home/index.dart';
import '../../personal/index.dart';
import '../index.dart';

class TabHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabHomeController>(() => TabHomeController());
    Get.lazyPut(() => HomeModel());
    Get.lazyPut(() => HomeController(Get.find<HomeModel>()));
    Get.lazyPut(() => WhatToEatModel());
    Get.lazyPut(() => WhatToEatController(Get.find<WhatToEatModel>()));
    Get.lazyPut(() => PersonalMode());
    Get.lazyPut(() => PersonalController(Get.find<PersonalMode>()));
  }
}
