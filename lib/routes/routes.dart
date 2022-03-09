import 'package:buyu/ui/pages/login/login_binding.dart';
import 'package:buyu/ui/pages/login/login_page.dart';
import 'package:buyu/ui/pages/main/main_binding.dart';
import 'package:buyu/ui/pages/main/main_page.dart';
import 'package:buyu/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class _RouteModel {
  final String path;
  final String label;
  final IconData icon;

  _RouteModel(this.label, { this.path = '/', this.icon = Icons.home });
}

final _RouteModel PAGE_SPLASH = _RouteModel('开屏页', path: '/splash');

final _RouteModel PAGE_LOGIN = _RouteModel('登陆', path: '/login');

final _RouteModel PAGE_MAIN = _RouteModel('主页', path: '/');
final _RouteModel VIEW_HOME = _RouteModel('首页',  icon: Icons.home);
final _RouteModel VIEW_PROFILE = _RouteModel('我的',  icon: Icons.manage_accounts_sharp);
final _RouteModel VIEW_INSPIRATION = _RouteModel('灵感',  icon: Icons.ac_unit);

final List<GetPage> GetPages = [
  GetPage(name: PAGE_SPLASH.path, page: () => SplashPage()),
  GetPage(name: PAGE_LOGIN.path, page: () => LoginPage(), binding: LoginBinding()),
  GetPage(name: PAGE_MAIN.path, page: () => MainPage(), binding: MainBinding()),
];