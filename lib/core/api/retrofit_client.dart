

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:logger/logger.dart';
import 'end_points.dart';
part 'retrofit_client.g.dart';
@injectable
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class RetrofitClient {
  @factoryMethod
  factory RetrofitClient(Dio dio) = _RetrofitClient;




}