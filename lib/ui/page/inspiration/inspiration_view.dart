import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'inspiration_controller.dart';

class InspirationView extends GetView<InspirationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '灵感页',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}