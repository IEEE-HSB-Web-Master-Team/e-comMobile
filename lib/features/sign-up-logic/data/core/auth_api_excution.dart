import 'package:dio/dio.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/core/sign_up_result.dart';

import '../../domain/core/sign_up_exception.dart';


Future<SignUpResult<T>> apiExecute<T>(
    Future<dynamic> Function() tryCode,
    T Function(dynamic response) domainMapper,
    ) async {
  try {
    var response = await tryCode();
    return Success( domainMapper(response));
  } on DioException catch (e) {
    if (e.response != null) {
      if (e.response!.statusCode ==500) {
        return Failure(exception: UnauthorizedException());
      } else {
        return Failure(exception: ServerError());
      }
    } else {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.unknown) {
        return Failure(exception: NoInternetException());
      }
      return Failure(exception: UnknownErrorException());
    }
  }
}
