import 'dart:convert';

import 'package:buyu/http/upgrade_provider.dart';
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

class DashboardView extends GetView<DashboardController> {

  var _pageController = PageController(
    /// 初始索引值
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DashboardController>(
      initState: (state) => {
        Upgrade()
      },
      builder: (controller) {
        return Scaffold(
          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              controller.changeTabIndex(index);
            },
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              _pageController.jumpToPage(index);
              controller.changeTabIndex(index);
            },
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
  final provider = Get.find<UpgradeProvider>();
  final tagName = await readFile('assets/version.txt');
  final data = await provider.ApiGetNewTagName();
  if (data.code != 0) {
    return;
  }
  if (data.data?.version.toString() == tagName) {
    return;
  }
  Get.defaultDialog(
      title: "提示框",
      backgroundColor: Colors.white,
      titleStyle: TextStyle(color: Colors.black),
      middleTextStyle: TextStyle(color: Colors.black),
      radius: 15,
      content: Text("${data.data?.version}, $tagName"),
      confirm: ElevatedButton(onPressed: () => {
        Get.back()
      }, child: Text('确定')),
      cancel: ElevatedButton(onPressed: () => {
        Get.back()
      }, child: Text('取消')),
  );
}