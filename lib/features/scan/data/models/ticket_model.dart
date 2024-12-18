import 'dart:convert';

import 'package:bwabat/features/scan/data/models/store_records_response.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Ticket extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "ticket_number")
  int? ticketNumber;

  @HiveField(1)
  @JsonKey(name: "user_id")
  int? uid;

  @HiveField(2)
  @JsonKey(name: "user_name")
  String? userName;

  @HiveField(3)
  @JsonKey(name: "ticket_type")
  String? ticketType;

  @HiveField(4)
  String? msg;

  @HiveField(5)
  @JsonKey(name: "time")
  String? scanTime;

  Ticket({
    this.ticketNumber,
    this.uid,
    this.userName,
    this.msg,
    this.ticketType,
    this.scanTime,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
  
  Map<String, dynamic> toJson() => _$TicketToJson(this);

  // Convert list of tickets to store-records format
  // static Map<String, dynamic> toStoreRecordsJson(List<Ticket> tickets) {
  //   final List<Map<String, dynamic>> recordsList = tickets.map((ticket) => {
  //     "ticket_number": ticket.ticketNumber,
  //     "time": ticket.scanTime ?? DateTime.now().toIso8601String(),
  //   }).toList();

  //   return {
  //     "records": recordsList,
  //   };
  // }

  // Parse store-records response
  static List<Ticket>? fromStoreRecordsResponse(StoreRecordsResponse response) {
      return response.records?.map((record) {
        try {
          return Ticket(
            ticketNumber: record.ticketNumber ,
            scanTime: record.scanTime,
            
          );
        } catch (e) {
          if (kDebugMode) {
            print('Error parsing ticket record: $e');
            print('Record data: $record');
          }
          return Ticket(); // Return empty ticket on parse error
        }
      }).toList();
  }
}
