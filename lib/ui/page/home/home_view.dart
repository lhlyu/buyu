import 'package:buyu/ui/page/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeController>();

    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(controller.title.value)),
              TextField(
                textAlign: TextAlign.center,
                onChanged: controller.changeTitle,
              )

            ],
          )
      ),
    );
  }
}