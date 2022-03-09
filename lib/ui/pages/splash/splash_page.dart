import 'package:buyu/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {

  startHome() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {
      // TODO 验证是否已登陆，登陆跳主页，未登陆跳登陆页
      Get.offNamed(PAGE_LOGIN.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    startHome();
    return Scaffold(
      body: Image.asset(
        "assets/splash.jpeg",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

}