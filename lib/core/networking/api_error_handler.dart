import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(
              error: ErrorData(message: "Connection to server failed"));
        case DioExceptionType.cancel:
          return ApiErrorModel(
              error: ErrorData(message: "Request to the server was cancelled"));
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
              error: ErrorData(message: "Connection timeout with the server"));
        case DioExceptionType.unknown:
          return ApiErrorModel(
              error: ErrorData(
                  message:
                      "Connection to the server failed due to internet connection"));
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              error: ErrorData(
                  message: "Receive timeout in connection with the server"));

        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              error: ErrorData(
                  message: "Send timeout in connection with the server"));

        default:
          return ApiErrorModel(
              error: ErrorData(message: "Something went wrong"));
      }
    } else {
      return ApiErrorModel(error: ErrorData(message: error.toString()));
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    error: ErrorData.fromJson(data['error']),
    status: data['status'],
  );
}
