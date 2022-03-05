import 'package:buyu/ui/page/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('设置页'),
            ElevatedButton(onPressed: Upgrade, child: Text('提示'))
          ],
        )
      ),
    );
  }
}