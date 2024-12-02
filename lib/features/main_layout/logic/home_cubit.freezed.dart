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
    required TResult Function() scanLoadingState,
    required TResult Function(Ticket ticket) scanSuccessState,
    required TResult Function(String message) scanErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanLoadingState,
    TResult? Function(Ticket ticket)? scanSuccessState,
    TResult? Function(String message)? scanErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanLoadingState,
    TResult Function(Ticket ticket)? scanSuccessState,
    TResult Function(String message)? scanErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanLoadingState value) scanLoadingState,
    required TResult Function(ScanSuccessState value) scanSuccessState,
    required TResult Function(ScanErrorState value) scanErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanLoadingState value)? scanLoadingState,
    TResult? Function(ScanSuccessState value)? scanSuccessState,
    TResult? Function(ScanErrorState value)? scanErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanLoadingState value)? scanLoadingState,
    TResult Function(ScanSuccessState value)? scanSuccessState,
    TResult Function(ScanErrorState value)? scanErrorState,
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
    required TResult Function() scanLoadingState,
    required TResult Function(Ticket ticket) scanSuccessState,
    required TResult Function(String message) scanErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanLoadingState,
    TResult? Function(Ticket ticket)? scanSuccessState,
    TResult? Function(String message)? scanErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanLoadingState,
    TResult Function(Ticket ticket)? scanSuccessState,
    TResult Function(String message)? scanErrorState,
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
    required TResult Function(ScanLoadingState value) scanLoadingState,
    required TResult Function(ScanSuccessState value) scanSuccessState,
    required TResult Function(ScanErrorState value) scanErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanLoadingState value)? scanLoadingState,
    TResult? Function(ScanSuccessState value)? scanSuccessState,
    TResult? Function(ScanErrorState value)? scanErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanLoadingState value)? scanLoadingState,
    TResult Function(ScanSuccessState value)? scanSuccessState,
    TResult Function(ScanErrorState value)? scanErrorState,
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
abstract class _$$ScanLoadingStateImplCopyWith<$Res> {
  factory _$$ScanLoadingStateImplCopyWith(_$ScanLoadingStateImpl value,
          $Res Function(_$ScanLoadingStateImpl) then) =
      __$$ScanLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ScanLoadingStateImpl>
    implements _$$ScanLoadingStateImplCopyWith<$Res> {
  __$$ScanLoadingStateImplCopyWithImpl(_$ScanLoadingStateImpl _value,
      $Res Function(_$ScanLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScanLoadingStateImpl implements ScanLoadingState {
  const _$ScanLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.scanLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanLoadingState,
    required TResult Function(Ticket ticket) scanSuccessState,
    required TResult Function(String message) scanErrorState,
  }) {
    return scanLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanLoadingState,
    TResult? Function(Ticket ticket)? scanSuccessState,
    TResult? Function(String message)? scanErrorState,
  }) {
    return scanLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanLoadingState,
    TResult Function(Ticket ticket)? scanSuccessState,
    TResult Function(String message)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanLoadingState != null) {
      return scanLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanLoadingState value) scanLoadingState,
    required TResult Function(ScanSuccessState value) scanSuccessState,
    required TResult Function(ScanErrorState value) scanErrorState,
  }) {
    return scanLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanLoadingState value)? scanLoadingState,
    TResult? Function(ScanSuccessState value)? scanSuccessState,
    TResult? Function(ScanErrorState value)? scanErrorState,
  }) {
    return scanLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanLoadingState value)? scanLoadingState,
    TResult Function(ScanSuccessState value)? scanSuccessState,
    TResult Function(ScanErrorState value)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanLoadingState != null) {
      return scanLoadingState(this);
    }
    return orElse();
  }
}

abstract class ScanLoadingState implements HomeState {
  const factory ScanLoadingState() = _$ScanLoadingStateImpl;
}

/// @nodoc
abstract class _$$ScanSuccessStateImplCopyWith<$Res> {
  factory _$$ScanSuccessStateImplCopyWith(_$ScanSuccessStateImpl value,
          $Res Function(_$ScanSuccessStateImpl) then) =
      __$$ScanSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$ScanSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ScanSuccessStateImpl>
    implements _$$ScanSuccessStateImplCopyWith<$Res> {
  __$$ScanSuccessStateImplCopyWithImpl(_$ScanSuccessStateImpl _value,
      $Res Function(_$ScanSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$ScanSuccessStateImpl(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$ScanSuccessStateImpl implements ScanSuccessState {
  const _$ScanSuccessStateImpl(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'HomeState.scanSuccessState(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanSuccessStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanSuccessStateImplCopyWith<_$ScanSuccessStateImpl> get copyWith =>
      __$$ScanSuccessStateImplCopyWithImpl<_$ScanSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanLoadingState,
    required TResult Function(Ticket ticket) scanSuccessState,
    required TResult Function(String message) scanErrorState,
  }) {
    return scanSuccessState(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanLoadingState,
    TResult? Function(Ticket ticket)? scanSuccessState,
    TResult? Function(String message)? scanErrorState,
  }) {
    return scanSuccessState?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanLoadingState,
    TResult Function(Ticket ticket)? scanSuccessState,
    TResult Function(String message)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanSuccessState != null) {
      return scanSuccessState(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanLoadingState value) scanLoadingState,
    required TResult Function(ScanSuccessState value) scanSuccessState,
    required TResult Function(ScanErrorState value) scanErrorState,
  }) {
    return scanSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanLoadingState value)? scanLoadingState,
    TResult? Function(ScanSuccessState value)? scanSuccessState,
    TResult? Function(ScanErrorState value)? scanErrorState,
  }) {
    return scanSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanLoadingState value)? scanLoadingState,
    TResult Function(ScanSuccessState value)? scanSuccessState,
    TResult Function(ScanErrorState value)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanSuccessState != null) {
      return scanSuccessState(this);
    }
    return orElse();
  }
}

abstract class ScanSuccessState implements HomeState {
  const factory ScanSuccessState(final Ticket ticket) = _$ScanSuccessStateImpl;

  Ticket get ticket;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanSuccessStateImplCopyWith<_$ScanSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanErrorStateImplCopyWith<$Res> {
  factory _$$ScanErrorStateImplCopyWith(_$ScanErrorStateImpl value,
          $Res Function(_$ScanErrorStateImpl) then) =
      __$$ScanErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ScanErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ScanErrorStateImpl>
    implements _$$ScanErrorStateImplCopyWith<$Res> {
  __$$ScanErrorStateImplCopyWithImpl(
      _$ScanErrorStateImpl _value, $Res Function(_$ScanErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ScanErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanErrorStateImpl implements ScanErrorState {
  const _$ScanErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.scanErrorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanErrorStateImplCopyWith<_$ScanErrorStateImpl> get copyWith =>
      __$$ScanErrorStateImplCopyWithImpl<_$ScanErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanLoadingState,
    required TResult Function(Ticket ticket) scanSuccessState,
    required TResult Function(String message) scanErrorState,
  }) {
    return scanErrorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanLoadingState,
    TResult? Function(Ticket ticket)? scanSuccessState,
    TResult? Function(String message)? scanErrorState,
  }) {
    return scanErrorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanLoadingState,
    TResult Function(Ticket ticket)? scanSuccessState,
    TResult Function(String message)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanErrorState != null) {
      return scanErrorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanLoadingState value) scanLoadingState,
    required TResult Function(ScanSuccessState value) scanSuccessState,
    required TResult Function(ScanErrorState value) scanErrorState,
  }) {
    return scanErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanLoadingState value)? scanLoadingState,
    TResult? Function(ScanSuccessState value)? scanSuccessState,
    TResult? Function(ScanErrorState value)? scanErrorState,
  }) {
    return scanErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanLoadingState value)? scanLoadingState,
    TResult Function(ScanSuccessState value)? scanSuccessState,
    TResult Function(ScanErrorState value)? scanErrorState,
    required TResult orElse(),
  }) {
    if (scanErrorState != null) {
      return scanErrorState(this);
    }
    return orElse();
  }
}

abstract class ScanErrorState implements HomeState {
  const factory ScanErrorState(final String message) = _$ScanErrorStateImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanErrorStateImplCopyWith<_$ScanErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
