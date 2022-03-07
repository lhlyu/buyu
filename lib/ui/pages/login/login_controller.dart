import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var size = Rx<double>(100);
  var raidus = Rx<double>(25);
  var color = Colors.yellow.obs;

  void animate() {
    this.size.value = this.size.value == 100 ? 200 : 100;
    this.raidus.value = this.raidus.value == 25 ? 100 : 25;
    this.color.value = this.color.value == Colors.yellow ? Colors.cyan : Colors.yellow;
  }
}