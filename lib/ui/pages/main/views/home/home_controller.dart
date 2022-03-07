import 'package:get/get.dart';

class HomeController extends GetxController {
  var title = '首页'.obs;

  void changeTitle(String val) {
    this.title.value = val;
  }
}