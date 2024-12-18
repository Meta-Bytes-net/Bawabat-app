import 'package:bwabat/core/networking/api_error_handler.dart';
import 'package:bwabat/core/networking/api_result.dart';
import 'package:bwabat/core/networking/api_service.dart';
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/core/services/hive_service.dart';
import 'package:bwabat/features/scan/data/models/store_records_response.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<bool> signOut() async {
    try {
      // Clear token
      await SharedPrefHelper.removeSecuredData(SharedPrefKeys.userToken);
      isLoggedInUser = false;

      // Verify token removal
      String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
      bool isSecuredDataRemoved = userToken == null || userToken.isEmpty;

      if (kDebugMode) {
        print("Sign out verification:");
        print("- isLoggedInUser: $isLoggedInUser");
        print("- userToken after removal: $userToken");
        print("- isSecuredDataRemoved: $isSecuredDataRemoved");
      }

      return isSecuredDataRemoved;
    } catch (e) {
      if (kDebugMode) {
        print("Error during sign out: $e");
      }
      return false;
    }
  }

  // Cache scanned ticket locally using Hive
  Future<void> cacheTicket(Ticket ticket) async {
    try {
      await HiveService.addTicket(ticket);
    } catch (e) {
      if (kDebugMode) {
        print('Error caching ticket: $e');
      }
      rethrow;
    }
  }

  // Get all cached tickets from Hive
  List<Ticket> getCachedTickets() {
    return HiveService.getAllTickets();
  }

  // Clear cached tickets after successful sync
  Future<void> clearCachedTickets() async {
    await HiveService.clearAllTickets();
  }

  // Sync cached tickets with server
  Future<ApiResult<StoreRecordsResponse>> syncCachedTickets() async {
    try {
      List<Ticket>? cachedTickets = getCachedTickets();
      if (cachedTickets.isEmpty) {
        return ApiResult.success(StoreRecordsResponse(records: []));
      }
  if (kDebugMode) {
        print(' Syncing ${cachedTickets.length} tickets...');
      }
      // Send all cached tickets in a single request
      final response = await _apiService.storeRecords( 
        StoreRecordsResponse(
          records: cachedTickets,
        ));
  if (kDebugMode) {
        print(' Sync response: $response');
      }
      // Clear cache after successful sync
      await clearCachedTickets();

      return ApiResult.success(response);
    } catch (e) {
      if (kDebugMode) {
        print('Error syncing tickets: $e');
      }
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  // Check if there are any cached tickets
  bool hasCachedTickets() {
    return HiveService.hasTickets();
  }
}
