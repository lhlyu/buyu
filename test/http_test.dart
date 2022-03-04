
import 'package:buyu/http/api.dart';

void main() {
 _testGetNewVersion();
}

void _testGetNewVersion() async {
  final data = await ApiGetNewTagName();
  print(data.data['version']);
}