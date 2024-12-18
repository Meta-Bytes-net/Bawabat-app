import 'package:bwabat/core/networking/api_constants.dart';
import 'package:bwabat/features/login/data/models/login_request_body.dart';
import 'package:bwabat/features/login/data/models/login_response.dart';
import 'package:bwabat/features/scan/data/models/store_records_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/scan/data/models/scan_qr_request_body.dart';
import '../../features/scan/data/models/ticket_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse?> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.scanQrCode)
  // Todo: change return type to ScanQrResponse
  Future<Ticket?> scanQrCode(
    @Body() ScanQrRequestBody scanQrRequestBody,
  );

  @POST(ApiConstants.storeRecords)
  Future<StoreRecordsResponse> storeRecords(
    @Body() StoreRecordsResponse storeRecordsResponse,
  );
}
