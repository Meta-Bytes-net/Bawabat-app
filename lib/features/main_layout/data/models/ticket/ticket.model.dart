import 'package:json_annotation/json_annotation.dart';

part 'ticket.model.g.dart';

@JsonSerializable()
class Ticket {
  @JsonKey(name: "rn")
  int? registrationNumber;
  int? uid;
  @JsonKey(name: "un")
  String? userName;

  String? msg;

  Ticket({this.registrationNumber, this.uid, this.userName, this.msg});

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return _$TicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}
