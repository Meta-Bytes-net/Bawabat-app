import 'package:bwabat/core/networking/api_error_handler.dart';
import 'package:bwabat/features/main_layout/data/models/scan_qr_request_body.dart';
import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<Ticket>> scanQrCode(
      ScanQrRequestBody scanQrRequestBody) async {
    try {
      final response = await _apiService.scanQrCode(scanQrRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
