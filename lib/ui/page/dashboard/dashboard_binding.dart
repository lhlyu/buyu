import 'package:buyu/http/app_provider.dart';
import 'package:buyu/http/test_provider.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => AppProvider());
    Get.lazyPut(() => TestProvider());
  }
}