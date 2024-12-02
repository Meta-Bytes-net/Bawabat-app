import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'event_name')
  String? eventName;
  @JsonKey(name: 'encrypt_key')
  String? encryptKey;
  String? iv;

  LoginResponse({
    this.accessToken,
    this.tokenType,
    this.eventName,
    this.encryptKey,
    this.iv,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
