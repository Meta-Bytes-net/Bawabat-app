import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "error")
  ErrorData? error;

  ApiErrorModel({
    this.status,
    this.error,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMessages() {
    return error?.details?.map((error) => '• $error').join('\n') ??
        error?.message ??
        '';
  }
}

@JsonSerializable()
class ErrorData {
  String? message;
  String? error;
  List<String>? details;

  ErrorData({this.message, this.error, this.details});

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ErrorDataToJson(this);
}
