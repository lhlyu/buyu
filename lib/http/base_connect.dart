import 'dart:convert';

import 'package:get/get.dart';

class BaseConnect extends GetConnect {
  @override
  void onInit() {

    // 请求拦截
    httpClient.addRequestModifier<void>((request) {
      request.headers["Content-Type"] = 'application/json;charset=UTF-8';
      return request;
    });


    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      // 处理逻辑
      return response;
    });
  }

  Future<BaseResponse<T>> doGet<T>(String url, Function(dynamic json) decoder, { Map<String, String>? headers,Map<String, dynamic>? query}) async {
    final response = await get(url, headers: headers, query: query, decoder: (json) => {
       BaseResponse<T>.fromJson(json, (json) => decoder(json))
    });
    // TODO 搞不懂这里body为什么是Set<BaseResponse<T>>
    return response.body?.single as BaseResponse<T>;
  }
}

class BaseResponse<T> {
  int? code = 0;
  String? msg = 'ok';
  T? data;

  BaseResponse({this.code, this.msg, this.data});

  BaseResponse.fromJson(dynamic json, Function(dynamic json) decoder) {
    this.code = json['code'];
    this.msg = json['msg'];
    this.data = json['data'] != null ? decoder(json['data']) : null;
  }
}