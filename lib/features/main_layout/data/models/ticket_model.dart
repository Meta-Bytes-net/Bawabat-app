import 'package:json_annotation/json_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
class Ticket {
  @JsonKey(name: "ticket_number")
  int? ticketNumber;
  @JsonKey(name: "user_id")
  int? uid;
  @JsonKey(name: "user_name")
  String? userName;

  @JsonKey(name: "ticket_type")
  String? ticketType;
  String? msg;

  Ticket(
      {this.ticketNumber, this.uid, this.userName, this.msg, this.ticketType});

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return _$TicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}
