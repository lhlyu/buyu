import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'package:get/get.dart';


// 读取文件
Future<String> readFile(String fpath) async {
  try {
    return await rootBundle.loadString(fpath);
  } catch (e) {
    Get.snackbar('错误', '[error] readFile $e');
    return '';
  }
}


