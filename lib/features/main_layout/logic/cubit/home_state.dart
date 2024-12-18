part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.signoutLoading() = SignoutLoading;
  const factory HomeState.signoutSuccess() = SignoutSuccess;
  const factory HomeState.signoutError() = SignoutError;
  
  // Sync states
  const factory HomeState.syncLoading() = SyncLoading;
  const factory HomeState.syncSuccess(List<Ticket> tickets) = SyncSuccess;
  const factory HomeState.syncError(String message) = SyncError;
  
  // Cache states
  const factory HomeState.cachingTicket() = CachingTicket;
  const factory HomeState.ticketCached() = TicketCached;
  const factory HomeState.cachingError(String message) = CachingError;
}
