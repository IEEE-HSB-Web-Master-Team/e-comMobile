import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/response/sign_up_response_entity.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "token")
  final String? token;

  SignUpResponse ({
    this.message,
    this.token,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) {
    return _$SignUpResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SignUpResponseToJson(this);
  }

  SignUpResponseEntity toEntity() {
    return SignUpResponseEntity(
      message: message,
      token: token
    );
  }
}


