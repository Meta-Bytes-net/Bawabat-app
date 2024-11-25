
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/core/networking/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class LoginResponse extends BaseResponse<Data?> {
  LoginResponse({
    super.status,
    super.data,
    super.error,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class User {
  int? id;
  String? email;
  String? createdAt;
  String? lastLogin;
  // Null? sessionToken;
  // Null? deletedAt;
  String? token;

  User(
      {this.id,
      this.email,
      this.createdAt,
      this.lastLogin,
      // this.sessionToken,
      // this.deletedAt,
      this.token});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
