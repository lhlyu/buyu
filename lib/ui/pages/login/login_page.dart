import 'package:buyu/routes/routes.dart';
import 'package:buyu/ui/widget/bg/bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

void jumpMainPage() {
  Get.offNamed(PAGE_MAIN.path);
}


class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: const Text(
                  "登陆",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      margin: const EdgeInsets.only(
                        right: 70,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 18, height: 1.2),
                                border: InputBorder.none,
                                icon: Icon(Icons.account_circle_rounded),
                                hintText: "账号",
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 18),
                                border: InputBorder.none,
                                icon: Icon(Icons.password),
                                hintText: "密码",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFFAAB2)!.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFFA92B5),
                              Color(0xFFEF8F91),
                            ],
                          ),
                        ),
                        child: const IconButton(
                          onPressed: jumpMainPage,
                          icon: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                            size: 32
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );

  }
  
}