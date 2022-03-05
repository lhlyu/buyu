import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


// 读取文件
Future<String> readFile(String fpath) async {
  try {
    return await rootBundle.loadString(fpath);
  } catch (e) {
    print('[error] readFile $e');
    return '';
  }
}


