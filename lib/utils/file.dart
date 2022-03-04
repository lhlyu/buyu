import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


// 读取文件
Future<String> readFile(String fpath) async {
  return await rootBundle.loadString(fpath);
}


