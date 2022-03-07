import 'package:buyu/http/app_provider.dart';
import 'package:buyu/utils/file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('我的'),
            ElevatedButton(onPressed: Upgrade, child: Text('最新版本'))
          ],
        )
      ),
    );
  }
}


// 检查是否需要升级
// 下载新版本
// 安装
void Upgrade() async {
  try {
    final provider = Get.find<AppProvider>();
    final tagName = await readFile('assets/version.txt');
    final data = await provider.ApiGetNewTagName();
    // if (data.code != 0) {
    //   return;
    // }
    // if (data.data?.version.toString() == tagName) {
    //   return;
    // }
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
  } catch (e) {
    Get.snackbar('错误', '[error] Upgrade $e');
  }
}