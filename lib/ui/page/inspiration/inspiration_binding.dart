import 'package:get/get.dart';

import 'inspiration_controller.dart';

class InspirationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InspirationController());
  }
}