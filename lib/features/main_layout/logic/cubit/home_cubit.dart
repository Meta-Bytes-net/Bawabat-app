import 'package:bloc/bloc.dart';
import 'package:bwabat/features/main_layout/data/repos/home_repo.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  Future<void> signOut() async {
    if (isClosed) return;  // Guard against closed cubit
    
    try {
      emit(const HomeState.signoutLoading());
      
      bool isSignedOut = await _homeRepo.signOut();
      if (kDebugMode) {
        print("Sign out result: $isSignedOut");
      }
      
      if (isSignedOut) {
        if (kDebugMode) {
          print("Sign out successful");
        }
        // Ensure we emit the success state
        if (!isClosed) {
          emit(const HomeState.signoutSuccess());
        }
      } else {
        if (!isClosed) {
          emit(const HomeState.signoutError());
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Sign out error: $e");
      }
      if (!isClosed) {
        emit(const HomeState.signoutError());
      }
    }
  }

  // Cache a ticket when offline
  Future<void> cacheTicket(Ticket ticket) async {
    try {
      emit(const HomeState.cachingTicket());
      await _homeRepo.cacheTicket(ticket);
      emit(const HomeState.ticketCached());
    } catch (e) {
      if (kDebugMode) {
        print("Error caching ticket: $e");
      }
      emit(HomeState.cachingError(e.toString()));
    }
  }

  // Get number of cached tickets
  int getCachedTicketsCount() {
    return _homeRepo.getCachedTickets().length;
  }

  // Get all cached tickets
  List<Ticket> getCachedTickets() {
    return _homeRepo.getCachedTickets();
  }

  // Check if there are any cached tickets
  bool hasCachedTickets() {
    return _homeRepo.hasCachedTickets();
  }

  // Sync cached tickets when online
Future<void> syncCachedTickets() async {

    if (!hasCachedTickets()) return;

    emit(const HomeState.syncLoading());
    
    final result = await _homeRepo.syncCachedTickets();
    result.when(
      success: (response) {
        if ( response.records != null) {
          final syncedTickets = Ticket.fromStoreRecordsResponse(response);
          // Cache the synced response
          for (var ticket in syncedTickets??[]) {
            if (ticket.ticketNumber != null) {  // Only cache valid tickets
              _homeRepo.cacheTicket(ticket);
            }
          }
          emit(HomeState.syncSuccess(syncedTickets??[]));
        } else {
          emit(const HomeState.syncError("Invalid response from server"));
        }
      },
      failure: (error) => emit(HomeState.syncError(error.error?.message ?? "Error syncing tickets")),
    );
  
}

  // Handle ticket scanning based on connectivity
Future<void> handleTicketScan(Ticket ticket) async {
  // Validate ticket before caching
  if (!_isValidTicket(ticket)) {
    emit(const HomeState.cachingError("Invalid ticket"));
    return;
  }

  final connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult == ConnectivityResult.none) {
    // Offline mode - cache the valid ticket
    await cacheTicket(ticket);
  } else {
    // Online mode - try to sync immediately
    try {
      await syncCachedTickets();
    } catch (e) {
      // If online sync fails, cache the ticket
      await cacheTicket(ticket);
    }
  }
}

bool _isValidTicket(Ticket ticket) {
  // Add your ticket validation logic here
  return ticket.ticketNumber != null && 
         ticket.scanTime != null;
}
}
