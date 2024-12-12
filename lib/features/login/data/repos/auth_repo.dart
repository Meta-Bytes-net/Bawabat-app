import 'package:bwabat/core/networking/api_error_handler.dart';
import 'package:bwabat/features/login/data/models/login_request_body.dart';
import 'package:bwabat/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class AuthRepo {
  final ApiService _apiService;

  AuthRepo(this._apiService);

  Future<ApiResult<LoginResponse?>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
