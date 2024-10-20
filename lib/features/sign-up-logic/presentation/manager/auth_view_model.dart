import 'package:bloc/bloc.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/core/sign_up_result.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/entities/response/sign_up_response_entity.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/domain/usecases/auth_usecase.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/presentation/manager/auth_actions.dart';
import 'package:ecomerce_ieee/features/sign-up-logic/presentation/manager/auth_states.dart';

import '../../domain/core/sign_up_exception.dart';
import '../../domain/entities/request/sign_up_request_entity.dart';

class AuthViewModel extends Cubit<AuthStates>{
  final AuthUseCase useCase;
  AuthViewModel(this.useCase): super(AuthInitial());

  void doAction(AuthActions action) async{
    switch(action){

      case SignUpAction():
        {
          _signUp(signUpRequestEntity: action.signUpRequestEntity);
          break;
        }
    }

  }

  void _signUp({required SignUpRequestEntity signUpRequestEntity})async{
    emit(SignUpLoading());
    final result = await useCase.signUp(signUpRequestEntity: signUpRequestEntity);
    switch(result){

      case Success<SignUpResponseEntity>():
        {
          emit(SignUpSuccess(response: result.data!));
          break;
        }
      case Failure<SignUpResponseEntity>():
        {
          final exception = result.exception;
          String message;
          if (exception is NoInternetException) {
            message = "No Internet Exception";
            emit(SignUpFailure(exception: message));
          } else if (exception is ServerError) {
            message = "Server Error";
            emit(SignUpFailure(exception: message));
          }  else {
            message = "Something went wrong";
            emit(SignUpFailure(exception: message));
          }
          break;
        }
    }
  }

}