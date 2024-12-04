part of 'home_cubit.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.scanLoadingState() = ScanLoadingState;
  const factory HomeState.scanSuccessState(Ticket ticket) = ScanSuccessState;
  const factory HomeState.scanErrorState(String message) = ScanErrorState;
}
