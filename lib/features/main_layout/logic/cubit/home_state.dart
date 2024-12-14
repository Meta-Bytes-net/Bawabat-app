part of 'home_cubit.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.signoutLoading() = SignoutLoading;

  const factory HomeState.signoutSuccess() = SignoutSuccess;

  const factory HomeState.signoutError() = SignoutError;
}
