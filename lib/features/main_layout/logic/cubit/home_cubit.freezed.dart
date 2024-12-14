// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signoutLoading,
    required TResult Function() signoutSuccess,
    required TResult Function() signoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signoutLoading,
    TResult? Function()? signoutSuccess,
    TResult? Function()? signoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signoutLoading,
    TResult Function()? signoutSuccess,
    TResult Function()? signoutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignoutLoading value) signoutLoading,
    required TResult Function(SignoutSuccess value) signoutSuccess,
    required TResult Function(SignoutError value) signoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignoutLoading value)? signoutLoading,
    TResult? Function(SignoutSuccess value)? signoutSuccess,
    TResult? Function(SignoutError value)? signoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignoutLoading value)? signoutLoading,
    TResult Function(SignoutSuccess value)? signoutSuccess,
    TResult Function(SignoutError value)? signoutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signoutLoading,
    required TResult Function() signoutSuccess,
    required TResult Function() signoutError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signoutLoading,
    TResult? Function()? signoutSuccess,
    TResult? Function()? signoutError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signoutLoading,
    TResult Function()? signoutSuccess,
    TResult Function()? signoutError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(SignoutLoading value) signoutLoading,
    required TResult Function(SignoutSuccess value) signoutSuccess,
    required TResult Function(SignoutError value) signoutError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignoutLoading value)? signoutLoading,
    TResult? Function(SignoutSuccess value)? signoutSuccess,
    TResult? Function(SignoutError value)? signoutError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignoutLoading value)? signoutLoading,
    TResult Function(SignoutSuccess value)? signoutSuccess,
    TResult Function(SignoutError value)? signoutError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignoutLoadingImplCopyWith<$Res> {
  factory _$$SignoutLoadingImplCopyWith(_$SignoutLoadingImpl value,
          $Res Function(_$SignoutLoadingImpl) then) =
      __$$SignoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SignoutLoadingImpl>
    implements _$$SignoutLoadingImplCopyWith<$Res> {
  __$$SignoutLoadingImplCopyWithImpl(
      _$SignoutLoadingImpl _value, $Res Function(_$SignoutLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignoutLoadingImpl implements SignoutLoading {
  const _$SignoutLoadingImpl();

  @override
  String toString() {
    return 'HomeState.signoutLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signoutLoading,
    required TResult Function() signoutSuccess,
    required TResult Function() signoutError,
  }) {
    return signoutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signoutLoading,
    TResult? Function()? signoutSuccess,
    TResult? Function()? signoutError,
  }) {
    return signoutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signoutLoading,
    TResult Function()? signoutSuccess,
    TResult Function()? signoutError,
    required TResult orElse(),
  }) {
    if (signoutLoading != null) {
      return signoutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignoutLoading value) signoutLoading,
    required TResult Function(SignoutSuccess value) signoutSuccess,
    required TResult Function(SignoutError value) signoutError,
  }) {
    return signoutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignoutLoading value)? signoutLoading,
    TResult? Function(SignoutSuccess value)? signoutSuccess,
    TResult? Function(SignoutError value)? signoutError,
  }) {
    return signoutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignoutLoading value)? signoutLoading,
    TResult Function(SignoutSuccess value)? signoutSuccess,
    TResult Function(SignoutError value)? signoutError,
    required TResult orElse(),
  }) {
    if (signoutLoading != null) {
      return signoutLoading(this);
    }
    return orElse();
  }
}

abstract class SignoutLoading implements HomeState {
  const factory SignoutLoading() = _$SignoutLoadingImpl;
}

/// @nodoc
abstract class _$$SignoutSuccessImplCopyWith<$Res> {
  factory _$$SignoutSuccessImplCopyWith(_$SignoutSuccessImpl value,
          $Res Function(_$SignoutSuccessImpl) then) =
      __$$SignoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SignoutSuccessImpl>
    implements _$$SignoutSuccessImplCopyWith<$Res> {
  __$$SignoutSuccessImplCopyWithImpl(
      _$SignoutSuccessImpl _value, $Res Function(_$SignoutSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignoutSuccessImpl implements SignoutSuccess {
  const _$SignoutSuccessImpl();

  @override
  String toString() {
    return 'HomeState.signoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signoutLoading,
    required TResult Function() signoutSuccess,
    required TResult Function() signoutError,
  }) {
    return signoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signoutLoading,
    TResult? Function()? signoutSuccess,
    TResult? Function()? signoutError,
  }) {
    return signoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signoutLoading,
    TResult Function()? signoutSuccess,
    TResult Function()? signoutError,
    required TResult orElse(),
  }) {
    if (signoutSuccess != null) {
      return signoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignoutLoading value) signoutLoading,
    required TResult Function(SignoutSuccess value) signoutSuccess,
    required TResult Function(SignoutError value) signoutError,
  }) {
    return signoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignoutLoading value)? signoutLoading,
    TResult? Function(SignoutSuccess value)? signoutSuccess,
    TResult? Function(SignoutError value)? signoutError,
  }) {
    return signoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignoutLoading value)? signoutLoading,
    TResult Function(SignoutSuccess value)? signoutSuccess,
    TResult Function(SignoutError value)? signoutError,
    required TResult orElse(),
  }) {
    if (signoutSuccess != null) {
      return signoutSuccess(this);
    }
    return orElse();
  }
}

abstract class SignoutSuccess implements HomeState {
  const factory SignoutSuccess() = _$SignoutSuccessImpl;
}

/// @nodoc
abstract class _$$SignoutErrorImplCopyWith<$Res> {
  factory _$$SignoutErrorImplCopyWith(
          _$SignoutErrorImpl value, $Res Function(_$SignoutErrorImpl) then) =
      __$$SignoutErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SignoutErrorImpl>
    implements _$$SignoutErrorImplCopyWith<$Res> {
  __$$SignoutErrorImplCopyWithImpl(
      _$SignoutErrorImpl _value, $Res Function(_$SignoutErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignoutErrorImpl implements SignoutError {
  const _$SignoutErrorImpl();

  @override
  String toString() {
    return 'HomeState.signoutError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signoutLoading,
    required TResult Function() signoutSuccess,
    required TResult Function() signoutError,
  }) {
    return signoutError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signoutLoading,
    TResult? Function()? signoutSuccess,
    TResult? Function()? signoutError,
  }) {
    return signoutError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signoutLoading,
    TResult Function()? signoutSuccess,
    TResult Function()? signoutError,
    required TResult orElse(),
  }) {
    if (signoutError != null) {
      return signoutError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignoutLoading value) signoutLoading,
    required TResult Function(SignoutSuccess value) signoutSuccess,
    required TResult Function(SignoutError value) signoutError,
  }) {
    return signoutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignoutLoading value)? signoutLoading,
    TResult? Function(SignoutSuccess value)? signoutSuccess,
    TResult? Function(SignoutError value)? signoutError,
  }) {
    return signoutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignoutLoading value)? signoutLoading,
    TResult Function(SignoutSuccess value)? signoutSuccess,
    TResult Function(SignoutError value)? signoutError,
    required TResult orElse(),
  }) {
    if (signoutError != null) {
      return signoutError(this);
    }
    return orElse();
  }
}

abstract class SignoutError implements HomeState {
  const factory SignoutError() = _$SignoutErrorImpl;
}
