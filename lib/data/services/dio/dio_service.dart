import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

class ApiConfig {
  static const String baseURL = "https://api.currencybeacon.com/v1/";

  static const String apiKey = "AdfmpDatxfdWBSwhc4F2CYUMKP9cGIYb";
}

@singleton
class DioService {
  final Dio dio;

  DioService(this.dio);

  @factoryMethod
  static DioService create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseURL,
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 5000),
        headers: {},
        queryParameters: {
          "api_key": ApiConfig.apiKey,
        },
      ),
    );
    (dio.transformer as BackgroundTransformer).jsonDecodeCallback =
        (string) => compute(_convertToJson, string);
    return DioService(dio);
  }

  static dynamic _convertToJson(String string) => json.decode(string);
}
