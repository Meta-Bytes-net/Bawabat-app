// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_records_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreRecordsResponse _$StoreRecordsResponseFromJson(
        Map<String, dynamic> json) =>
    StoreRecordsResponse(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreRecordsResponseToJson(
        StoreRecordsResponse instance) =>
    <String, dynamic>{
      'records': instance.records,
    };
