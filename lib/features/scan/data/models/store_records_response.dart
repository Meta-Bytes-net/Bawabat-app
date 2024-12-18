import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_records_response.g.dart';

@JsonSerializable()
class StoreRecordsResponse {
  
  final List<Ticket>? records;

  StoreRecordsResponse({
    required this.records,
  });

  factory StoreRecordsResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreRecordsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreRecordsResponseToJson(this);

  Map<String, dynamic> toMap() => {
    'message': records,
  };
}
