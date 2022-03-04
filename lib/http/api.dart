import 'package:buyu/http/http_manager.dart';
import 'package:buyu/http/response_data.dart';

/*
eg:
{
    "code": 0,
    "msg": "ok",
    "data": {
        "version": "v0.0.1-rc30",
        "content": "",
        "download": "https://github.com/lhlyu/buyu/releases/download/v0.0.1-rc30/app-release.apk",
        "prerelease": false
    }
}
 */
Future<ResponseData> ApiGetNewTagName() async {
  return await HttpManager.get('https://func.lhlyu.com/api/buyu_version', null);
}