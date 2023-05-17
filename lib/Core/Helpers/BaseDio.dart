import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';

class BaseDio {
  late Dio _dio;
  Dio get dio => _dio;

  Dio _initDio() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: BaseBrain.baseDomain,
      connectTimeout: const Duration(seconds: 25),
      receiveTimeout: const Duration(seconds: 25),
    );

    Dio dio = Dio(baseOptions);

    if(kDebugMode){
      dio.interceptors.add(LogInterceptor(requestBody: true,request: true));
    }

    return dio;
  }

  BaseDio(){
    _dio = _initDio();
  }
}