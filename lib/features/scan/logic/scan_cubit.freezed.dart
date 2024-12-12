// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanState
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
    extends _$ScanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ScanState.initial'));
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
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
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
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScanState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ScanScanningStateImplCopyWith<$Res> {
  factory _$$ScanScanningStateImplCopyWith(_$ScanScanningStateImpl value,
          $Res Function(_$ScanScanningStateImpl) then) =
      __$$ScanScanningStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanScanningStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanScanningStateImpl>
    implements _$$ScanScanningStateImplCopyWith<$Res> {
  __$$ScanScanningStateImplCopyWithImpl(_$ScanScanningStateImpl _value,
      $Res Function(_$ScanScanningStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScanScanningStateImpl
    with DiagnosticableTreeMixin
    implements ScanScanningState {
  const _$ScanScanningStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanScanningState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ScanState.scanScanningState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanScanningStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return scanScanningState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return scanScanningState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanScanningState != null) {
      return scanScanningState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return scanScanningState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return scanScanningState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanScanningState != null) {
      return scanScanningState(this);
    }
    return orElse();
  }
}

abstract class ScanScanningState implements ScanState {
  const factory ScanScanningState() = _$ScanScanningStateImpl;
}

/// @nodoc
abstract class _$$ScanOnlineLoadingStateImplCopyWith<$Res> {
  factory _$$ScanOnlineLoadingStateImplCopyWith(
          _$ScanOnlineLoadingStateImpl value,
          $Res Function(_$ScanOnlineLoadingStateImpl) then) =
      __$$ScanOnlineLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanOnlineLoadingStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanOnlineLoadingStateImpl>
    implements _$$ScanOnlineLoadingStateImplCopyWith<$Res> {
  __$$ScanOnlineLoadingStateImplCopyWithImpl(
      _$ScanOnlineLoadingStateImpl _value,
      $Res Function(_$ScanOnlineLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScanOnlineLoadingStateImpl
    with DiagnosticableTreeMixin
    implements ScanOnlineLoadingState {
  const _$ScanOnlineLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanOnlineLoadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ScanState.scanOnlineLoadingState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanOnlineLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return scanOnlineLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return scanOnlineLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanOnlineLoadingState != null) {
      return scanOnlineLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return scanOnlineLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return scanOnlineLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanOnlineLoadingState != null) {
      return scanOnlineLoadingState(this);
    }
    return orElse();
  }
}

abstract class ScanOnlineLoadingState implements ScanState {
  const factory ScanOnlineLoadingState() = _$ScanOnlineLoadingStateImpl;
}

/// @nodoc
abstract class _$$ScanErrorStateImplCopyWith<$Res> {
  factory _$$ScanErrorStateImplCopyWith(_$ScanErrorStateImpl value,
          $Res Function(_$ScanErrorStateImpl) then) =
      __$$ScanErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$ScanErrorStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanErrorStateImpl>
    implements _$$ScanErrorStateImplCopyWith<$Res> {
  __$$ScanErrorStateImplCopyWithImpl(
      _$ScanErrorStateImpl _value, $Res Function(_$ScanErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ScanErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ScanErrorStateImpl
    with DiagnosticableTreeMixin
    implements ScanErrorState {
  const _$ScanErrorStateImpl(this.error);

  @override
  final ApiErrorModel error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanErrorState(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanState.scanErrorState'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScanState
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
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return scanErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return scanErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanErrorState != null) {
      return scanErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return scanErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return scanErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanErrorState != null) {
      return scanErrorState(this);
    }
    return orElse();
  }
}

abstract class ScanErrorState implements ScanState {
  const factory ScanErrorState(final ApiErrorModel error) =
      _$ScanErrorStateImpl;

  ApiErrorModel get error;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanErrorStateImplCopyWith<_$ScanErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanProcessingStateImplCopyWith<$Res> {
  factory _$$ScanProcessingStateImplCopyWith(_$ScanProcessingStateImpl value,
          $Res Function(_$ScanProcessingStateImpl) then) =
      __$$ScanProcessingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? barcodeData});
}

/// @nodoc
class __$$ScanProcessingStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanProcessingStateImpl>
    implements _$$ScanProcessingStateImplCopyWith<$Res> {
  __$$ScanProcessingStateImplCopyWithImpl(_$ScanProcessingStateImpl _value,
      $Res Function(_$ScanProcessingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeData = freezed,
  }) {
    return _then(_$ScanProcessingStateImpl(
      barcodeData: freezed == barcodeData
          ? _value.barcodeData
          : barcodeData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScanProcessingStateImpl
    with DiagnosticableTreeMixin
    implements ScanProcessingState {
  const _$ScanProcessingStateImpl({this.barcodeData});

  @override
  final String? barcodeData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanProcessingState(barcodeData: $barcodeData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanState.scanProcessingState'))
      ..add(DiagnosticsProperty('barcodeData', barcodeData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanProcessingStateImpl &&
            (identical(other.barcodeData, barcodeData) ||
                other.barcodeData == barcodeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcodeData);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanProcessingStateImplCopyWith<_$ScanProcessingStateImpl> get copyWith =>
      __$$ScanProcessingStateImplCopyWithImpl<_$ScanProcessingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return scanProcessingState(barcodeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return scanProcessingState?.call(barcodeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanProcessingState != null) {
      return scanProcessingState(barcodeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return scanProcessingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return scanProcessingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanProcessingState != null) {
      return scanProcessingState(this);
    }
    return orElse();
  }
}

abstract class ScanProcessingState implements ScanState {
  const factory ScanProcessingState({final String? barcodeData}) =
      _$ScanProcessingStateImpl;

  String? get barcodeData;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanProcessingStateImplCopyWith<_$ScanProcessingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanNavigationStateImplCopyWith<$Res> {
  factory _$$ScanNavigationStateImplCopyWith(_$ScanNavigationStateImpl value,
          $Res Function(_$ScanNavigationStateImpl) then) =
      __$$ScanNavigationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket? ticket});
}

/// @nodoc
class __$$ScanNavigationStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanNavigationStateImpl>
    implements _$$ScanNavigationStateImplCopyWith<$Res> {
  __$$ScanNavigationStateImplCopyWithImpl(_$ScanNavigationStateImpl _value,
      $Res Function(_$ScanNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = freezed,
  }) {
    return _then(_$ScanNavigationStateImpl(
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ));
  }
}

/// @nodoc

class _$ScanNavigationStateImpl
    with DiagnosticableTreeMixin
    implements ScanNavigationState {
  const _$ScanNavigationStateImpl({this.ticket});

  @override
  final Ticket? ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanNavigationState(ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanState.scanNavigationState'))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanNavigationStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanNavigationStateImplCopyWith<_$ScanNavigationStateImpl> get copyWith =>
      __$$ScanNavigationStateImplCopyWithImpl<_$ScanNavigationStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanScanningState,
    required TResult Function() scanOnlineLoadingState,
    required TResult Function(ApiErrorModel error) scanErrorState,
    required TResult Function(String? barcodeData) scanProcessingState,
    required TResult Function(Ticket? ticket) scanNavigationState,
  }) {
    return scanNavigationState(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanScanningState,
    TResult? Function()? scanOnlineLoadingState,
    TResult? Function(ApiErrorModel error)? scanErrorState,
    TResult? Function(String? barcodeData)? scanProcessingState,
    TResult? Function(Ticket? ticket)? scanNavigationState,
  }) {
    return scanNavigationState?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanScanningState,
    TResult Function()? scanOnlineLoadingState,
    TResult Function(ApiErrorModel error)? scanErrorState,
    TResult Function(String? barcodeData)? scanProcessingState,
    TResult Function(Ticket? ticket)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanNavigationState != null) {
      return scanNavigationState(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ScanScanningState value) scanScanningState,
    required TResult Function(ScanOnlineLoadingState value)
        scanOnlineLoadingState,
    required TResult Function(ScanErrorState value) scanErrorState,
    required TResult Function(ScanProcessingState value) scanProcessingState,
    required TResult Function(ScanNavigationState value) scanNavigationState,
  }) {
    return scanNavigationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ScanScanningState value)? scanScanningState,
    TResult? Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult? Function(ScanErrorState value)? scanErrorState,
    TResult? Function(ScanProcessingState value)? scanProcessingState,
    TResult? Function(ScanNavigationState value)? scanNavigationState,
  }) {
    return scanNavigationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ScanScanningState value)? scanScanningState,
    TResult Function(ScanOnlineLoadingState value)? scanOnlineLoadingState,
    TResult Function(ScanErrorState value)? scanErrorState,
    TResult Function(ScanProcessingState value)? scanProcessingState,
    TResult Function(ScanNavigationState value)? scanNavigationState,
    required TResult orElse(),
  }) {
    if (scanNavigationState != null) {
      return scanNavigationState(this);
    }
    return orElse();
  }
}

abstract class ScanNavigationState implements ScanState {
  const factory ScanNavigationState({final Ticket? ticket}) =
      _$ScanNavigationStateImpl;

  Ticket? get ticket;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanNavigationStateImplCopyWith<_$ScanNavigationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
