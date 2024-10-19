import 'package:ecomerce_ieee/features/sign-up-logic/domain/core/sign_up_result.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/request/sign_up_request_entity.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/response/sign_up_response_entity.dart';

abstract class AuthRepository{
  Future<SignUpResult<SignUpResponseEntity>> signUp({required SignUpRequestEntity signUpRequestEntity});
}