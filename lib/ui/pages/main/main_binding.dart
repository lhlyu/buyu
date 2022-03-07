import 'package:buyu/http/app_provider.dart';
import 'package:buyu/http/test_provider.dart';
import 'package:get/get.dart';

import 'main_controller.dart';
import 'views/home/home_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());

    Get.lazyPut(() => AppProvider());
    Get.lazyPut(() => TestProvider());
  }
}