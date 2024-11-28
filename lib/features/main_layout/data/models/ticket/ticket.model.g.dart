// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      registrationNumber: (json['rn'] as num?)?.toInt(),
      uid: (json['uid'] as num?)?.toInt(),
      userName: json['un'] as String?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'rn': instance.registrationNumber,
      'uid': instance.uid,
      'un': instance.userName,
      'msg': instance.msg,
    };
