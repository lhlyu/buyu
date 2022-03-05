import 'package:buyu/http/base_connect.dart';
import 'package:get/get.dart';


class BuyuVersion{
  String version = '';
  String content = '';
  String download = '';
  bool prerelease = false;

  BuyuVersion({required this.version,required this.content,required this.download,required this.prerelease});

  BuyuVersion.fromJson(dynamic json) {
    this.version = json['version'];
    this.content = json['content'];
    this.download = json['download'];
    this.prerelease = json['prerelease'];
  }

  static Function(Map<String, dynamic> json) getFromJson() {
    return BuyuVersion.fromJson;
  }

}

class UpgradeProvider extends BaseConnect {

  Future<BaseResponse<BuyuVersion>> ApiGetNewTagName() async {
    return await doGet('https://func.lhlyu.com/api/buyu_version', BuyuVersion.fromJson);
  }
}