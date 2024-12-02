// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      eventName: json['event_name'] as String?,
      encryptKey: json['encrypt_key'] as String?,
      iv: json['iv'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'event_name': instance.eventName,
      'encrypt_key': instance.encryptKey,
      'iv': instance.iv,
    };
