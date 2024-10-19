import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/response/sign_up_response_entity.dart';

sealed class AuthStates {}

class AuthInitial extends AuthStates {}

class SignUpLoading extends AuthStates {}

class SignUpSuccess extends AuthStates {
  final SignUpResponseEntity response;

  SignUpSuccess({required this.response});
}

class SignUpFailure extends AuthStates {
  final String exception;
  SignUpFailure({required this.exception});
}
