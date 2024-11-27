import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "error")
  String? error;
  @JsonKey(name: "data")
  T? data;
  BaseResponse({this.error, required this.data, this.status});
  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson(
          BaseResponse<T> baseResponse, Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}
