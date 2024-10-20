import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../core/di/config.dart';

@module
abstract class NetworkModule{

  @LazySingleton()
  Dio provideDio(){
    Dio _dio = Dio();

    _dio.options.connectTimeout = const Duration(seconds: 60);
    _dio.options.receiveTimeout = const Duration(seconds: 60);
    _dio.interceptors.add(getIt<PrettyDioLogger>());
    return _dio;
  }

  PrettyDioLogger provideLogInterceptor(){
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      logPrint: (object) {
        print(object);
      },

    );
  }



}