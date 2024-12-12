// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      ticketNumber: (json['ticket_number'] as num?)?.toInt(),
      uid: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      msg: json['msg'] as String?,
      ticketType: json['ticket_type'] as String?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'user_id': instance.uid,
      'user_name': instance.userName,
      'ticket_type': instance.ticketType,
      'msg': instance.msg,
    };
