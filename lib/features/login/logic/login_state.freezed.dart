// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(LoginResponse data) loginSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(LoginResponse data)? loginSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(LoginResponse data)? loginSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? loginErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(LoginResponse data) loginSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) loginErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(LoginResponse data)? loginSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? loginErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(LoginResponse data)? loginSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? loginErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<T, $Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl<T> value,
          $Res Function(_$LoginLoadingStateImpl<T>) then) =
      __$$LoginLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginLoadingStateImpl<T>>
    implements _$$LoginLoadingStateImplCopyWith<T, $Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl<T> _value,
      $Res Function(_$LoginLoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingStateImpl<T> implements LoginLoadingState<T> {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginState<$T>.loginLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(LoginResponse data) loginSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) loginErrorState,
  }) {
    return loginLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(LoginResponse data)? loginSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? loginErrorState,
  }) {
    return loginLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(LoginResponse data)? loginSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState<T> implements LoginState<T> {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<T, $Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl<T> value,
          $Res Function(_$LoginSuccessStateImpl<T>) then) =
      __$$LoginSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LoginResponse data});
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginSuccessStateImpl<T>>
    implements _$$LoginSuccessStateImplCopyWith<T, $Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl<T> _value,
      $Res Function(_$LoginSuccessStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoginSuccessStateImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$LoginSuccessStateImpl<T> implements LoginSuccessState<T> {
  const _$LoginSuccessStateImpl(this.data);

  @override
  final LoginResponse data;

  @override
  String toString() {
    return 'LoginState<$T>.loginSuccessState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessStateImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessStateImplCopyWith<T, _$LoginSuccessStateImpl<T>>
      get copyWith =>
          __$$LoginSuccessStateImplCopyWithImpl<T, _$LoginSuccessStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(LoginResponse data) loginSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) loginErrorState,
  }) {
    return loginSuccessState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(LoginResponse data)? loginSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? loginErrorState,
  }) {
    return loginSuccessState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(LoginResponse data)? loginSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState<T> implements LoginState<T> {
  const factory LoginSuccessState(final LoginResponse data) =
      _$LoginSuccessStateImpl<T>;

  LoginResponse get data;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessStateImplCopyWith<T, _$LoginSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorStateImplCopyWith<T, $Res> {
  factory _$$LoginErrorStateImplCopyWith(_$LoginErrorStateImpl<T> value,
          $Res Function(_$LoginErrorStateImpl<T>) then) =
      __$$LoginErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$LoginErrorStateImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginErrorStateImpl<T>>
    implements _$$LoginErrorStateImplCopyWith<T, $Res> {
  __$$LoginErrorStateImplCopyWithImpl(_$LoginErrorStateImpl<T> _value,
      $Res Function(_$LoginErrorStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$LoginErrorStateImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$LoginErrorStateImpl<T> implements LoginErrorState<T> {
  const _$LoginErrorStateImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'LoginState<$T>.loginErrorState(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorStateImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorStateImplCopyWith<T, _$LoginErrorStateImpl<T>> get copyWith =>
      __$$LoginErrorStateImplCopyWithImpl<T, _$LoginErrorStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoadingState,
    required TResult Function(LoginResponse data) loginSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) loginErrorState,
  }) {
    return loginErrorState(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoadingState,
    TResult? Function(LoginResponse data)? loginSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? loginErrorState,
  }) {
    return loginErrorState?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoadingState,
    TResult Function(LoginResponse data)? loginSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginErrorState != null) {
      return loginErrorState(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoadingState<T> value) loginLoadingState,
    required TResult Function(LoginSuccessState<T> value) loginSuccessState,
    required TResult Function(LoginErrorState<T> value) loginErrorState,
  }) {
    return loginErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult? Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult? Function(LoginErrorState<T> value)? loginErrorState,
  }) {
    return loginErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoadingState<T> value)? loginLoadingState,
    TResult Function(LoginSuccessState<T> value)? loginSuccessState,
    TResult Function(LoginErrorState<T> value)? loginErrorState,
    required TResult orElse(),
  }) {
    if (loginErrorState != null) {
      return loginErrorState(this);
    }
    return orElse();
  }
}

abstract class LoginErrorState<T> implements LoginState<T> {
  const factory LoginErrorState(final ApiErrorModel apiErrorModel) =
      _$LoginErrorStateImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorStateImplCopyWith<T, _$LoginErrorStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
