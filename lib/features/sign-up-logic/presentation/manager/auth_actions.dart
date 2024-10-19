import '../../domain/entities/request/sign_up_request_entity.dart';

sealed class AuthActions {}

class SignUpAction extends AuthActions {
  final SignUpRequestEntity signUpRequestEntity;
  SignUpAction(this.signUpRequestEntity);
}