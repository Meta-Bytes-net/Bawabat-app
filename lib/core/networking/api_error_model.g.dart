// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
    };

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) => ErrorData(
      message: json['message'] as String?,
      error: json['error'] as String?,
      details:
          (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ErrorDataToJson(ErrorData instance) => <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'details': instance.details,
    };
