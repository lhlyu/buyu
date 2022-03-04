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