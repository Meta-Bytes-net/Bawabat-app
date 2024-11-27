import 'package:json_annotation/json_annotation.dart';

part 'scan_qr_request_body.g.dart';

@JsonSerializable()
class ScanQrRequestBody {
  final String qrCode;

  ScanQrRequestBody({
    required this.qrCode,
  });

  Map<String, dynamic> toJson() => _$ScanQrRequestBodyToJson(this);
}
