import 'package:buyu/http/base_connect.dart';

class TestProvider extends BaseConnect {

  Future<BaseResponse<dynamic>> ApiGetTest(String kind) async {
    return await doGet('https://func.lhlyu.com/api/test?kind=$kind', null);
  }
}