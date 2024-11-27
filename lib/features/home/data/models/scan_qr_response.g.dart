// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_qr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanQrResponse _$ScanQrResponseFromJson(Map<String, dynamic> json) =>
    ScanQrResponse(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ScanQrResponseToJson(ScanQrResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data();

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{};
