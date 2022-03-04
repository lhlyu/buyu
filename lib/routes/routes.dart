import 'package:buyu/ui/page/dashboard/dashboard_binding.dart';
import 'package:buyu/ui/page/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:buyu/ui/page/home/home_view.dart';
import 'package:buyu/ui/page/setting/setting_view.dart';
import 'package:buyu/ui/page/inspiration/inspiration_view.dart';

import 'package:buyu/ui/page/home/home_binding.dart';
import 'package:buyu/ui/page/setting/setting_binding.dart';
import 'package:buyu/ui/page/inspiration/inspiration_binding.dart';




class _RouteModel {
  int index;
  String path;
  String label;
  Widget icon;

  _RouteModel(this.index, this.path, this.label, this.icon);
}

final _RouteModel ROUTE_DASHBOARD = _RouteModel(0,'/','', Icon(Icons.dashboard));
final _RouteModel ROUTE_HOME = _RouteModel(0,'/home','首页', Icon(Icons.home));
final _RouteModel ROUTE_SETTING = _RouteModel(1,'/setting','设置', Icon(Icons.settings));
final _RouteModel ROUTE_INSPIRATION = _RouteModel(2,'/inspiration','灵感', Icon(Icons.ac_unit));

final List<GetPage> GetPages = [
  GetPage(name: ROUTE_DASHBOARD.path, page: () => DashboardView(), binding: DashboardBinding()),
  // GetPage(name: ROUTE_HOME.path, page: () => HomeView(), binding: HomeBinding()),
  // GetPage(name: ROUTE_SETTING.path, page: () => SettingView(), binding: SettingBinding()),
  // GetPage(name: ROUTE_INSPIRATION.path, page: () => InspirationView(), binding: InspirationBinding()),
];