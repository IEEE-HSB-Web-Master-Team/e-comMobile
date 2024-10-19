import 'package:ecomerce_ieee/features/sign-up-logic/data/data_sources/contracts/online_datasource.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/core/sign_up_result.dart';

import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/request/sign_up_request_entity.dart';

import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/response/sign_up_response_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/contracts/auth_repo.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  OnlineDatasource onlineDatasource;

  @factoryMethod
  AuthRepositoryImpl({required this.onlineDatasource});
  @override
  Future<SignUpResult<SignUpResponseEntity>> signUp({required SignUpRequestEntity signUpRequestEntity}) async {
    var response = await onlineDatasource.signUp(signUpRequestEntity: signUpRequestEntity);
    return response;
  }

}