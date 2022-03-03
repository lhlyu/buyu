import 'package:buyu/ui/page/home/home_controller.dart';
import 'package:buyu/ui/page/inspiration/inspiration_controller.dart';
import 'package:buyu/ui/page/setting/setting_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => InspirationController());
    Get.lazyPut(() => SettingController());
  }
}