// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketAdapter extends TypeAdapter<Ticket> {
  @override
  final int typeId = 0;

  @override
  Ticket read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ticket(
      ticketNumber: fields[0] as int?,
      uid: fields[1] as int?,
      userName: fields[2] as String?,
      msg: fields[4] as String?,
      ticketType: fields[3] as String?,
      scanTime: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Ticket obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.ticketNumber)
      ..writeByte(1)
      ..write(obj.uid)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.ticketType)
      ..writeByte(4)
      ..write(obj.msg)
      ..writeByte(5)
      ..write(obj.scanTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      ticketNumber: (json['ticket_number'] as num?)?.toInt(),
      uid: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      msg: json['msg'] as String?,
      ticketType: json['ticket_type'] as String?,
      scanTime: json['time'] as String?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'user_id': instance.uid,
      'user_name': instance.userName,
      'ticket_type': instance.ticketType,
      'msg': instance.msg,
      'time': instance.scanTime,
    };
