
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/features/login/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loginLoadingState() = LoginLoadingState;
  const factory LoginState.loginSuccessState(LoginResponse data) =
      LoginSuccessState;
  const factory LoginState.loginErrorState(ApiErrorModel apiErrorModel) =
      LoginErrorState;
}
