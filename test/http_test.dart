import 'package:buyu/http/test_provider.dart';

void main() {
  final provider = new TestProvider();
  final result = provider.ApiGetTest('string');
  print(result);
}