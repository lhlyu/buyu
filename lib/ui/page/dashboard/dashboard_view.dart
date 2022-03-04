import 'dart:convert';

import 'package:buyu/http/api.dart';
import 'package:buyu/utils/file.dart';
import 'package:buyu/routes/routes.dart';
import 'package:buyu/ui/page/home/home_view.dart';
import 'package:buyu/ui/page/inspiration/inspiration_view.dart';
import 'package:buyu/ui/page/setting/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

final pages = [
  HomeView(),
  InspirationView(),
  SettingView()
];

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      initState: (state) => {
        Upgrade()
      },
      builder: (controller) {
        return Scaffold(
          body: pages[controller.tabIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(label: ROUTE_HOME.label, icon: ROUTE_HOME.icon),
              BottomNavigationBarItem(label: ROUTE_INSPIRATION.label, icon: ROUTE_INSPIRATION.icon),
              BottomNavigationBarItem(label: ROUTE_SETTING.label, icon: ROUTE_SETTING.icon),
            ],
          ),
        );
      },
    );
  }
}


// 检查是否需要升级
// 下载新版本
// 安装
void Upgrade() async {
  final tagName = await readFile('version.txt');
  final data = await ApiGetNewTagName();
  Get.defaultDialog(
      title: "提示框",
      middleText: "${jsonEncode(data)}, $tagName",
      backgroundColor: Colors.white,
      titleStyle: TextStyle(color: Colors.black),
      middleTextStyle: TextStyle(color: Colors.black),
      radius: 15
  );
}