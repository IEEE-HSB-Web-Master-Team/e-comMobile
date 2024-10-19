import 'package:ecomerce_ieee/features/sign-up-logic/domain/contracts/auth_repo.dart';
import 'package:injectable/injectable.dart';

import '../core/sign_up_result.dart';
import '../entities/request/sign_up_request_entity.dart';
import '../entities/response/sign_up_response_entity.dart';

@injectable
class AuthUseCase{
  AuthRepository authRepository;

  @factoryMethod
  AuthUseCase({required this.authRepository});

  Future<SignUpResult<SignUpResponseEntity>> signUp({required SignUpRequestEntity signUpRequestEntity}) async{
    return await authRepository.signUp(signUpRequestEntity: signUpRequestEntity);
  }

}