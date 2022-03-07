import 'package:buyu/routes/routes.dart';
import 'package:buyu/ui/pages/main/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';
import 'views/home/home_view.dart';
import 'views/inspiration/inspiration_view.dart';

final pages = [
  HomeView(),
  InspirationView(),
  ProfileView()
];

class MainPage extends GetView<MainController> {

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
          BottomNavigationBarItem(label: VIEW_HOME.label, icon: Icon(VIEW_HOME.icon)),
          BottomNavigationBarItem(label: VIEW_INSPIRATION.label, icon: Icon(VIEW_INSPIRATION.icon)),
          BottomNavigationBarItem(label: VIEW_PROFILE.label, icon: Icon(VIEW_PROFILE.icon)),
        ],
      ),
    );
  }
}


