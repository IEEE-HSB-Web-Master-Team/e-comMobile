import 'package:ecomerce_ieee/features/sign-up-logic/data/api/models/request/sign_up_request.dart';

class SignUpRequestEntity {
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? rePassword;
  final String? phone;

  SignUpRequestEntity ({
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.rePassword,
    this.phone,
  });

  SignUpRequest toModel(){
    return SignUpRequest(
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone
    );
  }

}


