import 'package:bwabat/core/networking/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scan_qr_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ScanQrResponse extends BaseResponse<Data?> {
  ScanQrResponse({
    super.status,
    super.data,
    super.error,
  });
  factory ScanQrResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanQrResponseFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
