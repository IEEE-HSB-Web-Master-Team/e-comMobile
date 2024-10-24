import 'package:dio/dio.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/data/api/models/request/sign_up_request.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/data/api/models/response/sign_up_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'sign_up_logic_retrofit_client.g.dart';
@Singleton()
@Injectable()
@RestApi(baseUrl: "https://exam.elevateegy.com/")
abstract class SignUpLogicRetrofitClient{

  @factoryMethod
  factory SignUpLogicRetrofitClient(Dio dio) = _SignUpLogicRetrofitClient;

  @POST("api/v1/auth/signup")
  Future<SignUpResponse> signUp(@Body() SignUpRequest signUpRequest);
}
