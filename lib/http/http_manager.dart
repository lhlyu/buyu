import 'dart:io';

import 'package:buyu/http/response_data.dart';
import 'package:buyu/utils/file.dart';
import 'package:dio/dio.dart';
import 'package:package_info/package_info.dart';

class HttpManager {
  static Dio? _dio;

  static get _dioInstance {
    if (_dio == null) {
      var baseOptions = BaseOptions(
        sendTimeout: 3000,
        receiveTimeout: 60000,
        connectTimeout: 30000,
      );
      _dio = Dio(baseOptions);
      _interceptor();
    }
    return _dio;
  }

  //拦截器部分
  static _interceptor(){
    _dio?.interceptors.add(InterceptorsWrapper(
        onRequest:(RequestOptions options, RequestInterceptorHandler handler) async {
          _dio?.lock();
          String version = '';
          // PackageInfo packageInfo = await PackageInfo.fromPlatform();
          // version = packageInfo.version;
          String tagName = await readFile('assets/version.txt');


          options.headers["Content-Type"] = 'application/json;charset=UTF-8';
          options.headers["version"] = version;
          options.headers["tag-name"] = tagName;

          _dio?.unlock();
          return handler.next(options);
        },
        onResponse:(Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioError e, ErrorInterceptorHandler handler) {
          return  handler.next(e);
        }
    ));
  }

  static Future<ResponseData> _request(String url, { String method = 'GET', Map<String, dynamic>? headers, Map<String, dynamic>? querys,  dynamic data}) async {
    headers = headers ?? Map();
    try {
      Options options = Options(
        method: method,
        headers: headers,
      );
      Response response = await _dioInstance.request(url, data: data, queryParameters: querys, options: options);
      if (response.data != null) {
        return Future.value(ResponseData(response.data['code'], response.data['msg'], response.data['data']));
      }
      return Future.value(ResponseData(-2, '数据为空', null));
    } catch (e) {
      return Future.value(ResponseData(-1, '请求异常', null));
    }
  }



  static Future<ResponseData> get(String url, Map<String, dynamic>? querys) async {
    return await _request(url, querys: querys);
  }
}