import 'package:ecomerce_ieee/features/sign-up-logic/data/api/models/response/sign_up_response.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/data/api/sign_up_logic_retrofit_client.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/data/core/auth_api_excution.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/data/data_sources/contracts/online_datasource.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/core/sign_up_result.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/request/sign_up_request_entity.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/response/sign_up_response_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OnlineDatasource)
class AuthDataSourceImpl implements OnlineDatasource {
  SignUpLogicRetrofitClient retrofitClient;
  @factoryMethod
  AuthDataSourceImpl({required this.retrofitClient});


  @override
  Future<SignUpResult<SignUpResponseEntity>> signUp({required SignUpRequestEntity signUpRequestEntity})async {
    return await apiExecute<SignUpResponseEntity>(
          () => retrofitClient.signUp(signUpRequestEntity.toModel()),
          (response) => response.toEntity(),
    );
  }

}