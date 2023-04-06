// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PureStatus value) $default, {
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PureStatus value)? $default, {
    TResult? Function(LoadingStatus value)? loading,
    TResult? Function(SuccessStatus value)? success,
    TResult? Function(ErrorStatus value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PureStatus value)? $default, {
    TResult Function(LoadingStatus value)? loading,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateStatusCopyWith<$Res> {
  factory $StateStatusCopyWith(
          StateStatus value, $Res Function(StateStatus) then) =
      _$StateStatusCopyWithImpl<$Res, StateStatus>;
}

/// @nodoc
class _$StateStatusCopyWithImpl<$Res, $Val extends StateStatus>
    implements $StateStatusCopyWith<$Res> {
  _$StateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PureStatusCopyWith<$Res> {
  factory _$$PureStatusCopyWith(
          _$PureStatus value, $Res Function(_$PureStatus) then) =
      __$$PureStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PureStatusCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$PureStatus>
    implements _$$PureStatusCopyWith<$Res> {
  __$$PureStatusCopyWithImpl(
      _$PureStatus _value, $Res Function(_$PureStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PureStatus implements PureStatus {
  const _$PureStatus();

  @override
  String toString() {
    return 'StateStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PureStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PureStatus value) $default, {
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PureStatus value)? $default, {
    TResult? Function(LoadingStatus value)? loading,
    TResult? Function(SuccessStatus value)? success,
    TResult? Function(ErrorStatus value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PureStatus value)? $default, {
    TResult Function(LoadingStatus value)? loading,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PureStatus implements StateStatus {
  const factory PureStatus() = _$PureStatus;
}

/// @nodoc
abstract class _$$LoadingStatusCopyWith<$Res> {
  factory _$$LoadingStatusCopyWith(
          _$LoadingStatus value, $Res Function(_$LoadingStatus) then) =
      __$$LoadingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStatusCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$LoadingStatus>
    implements _$$LoadingStatusCopyWith<$Res> {
  __$$LoadingStatusCopyWithImpl(
      _$LoadingStatus _value, $Res Function(_$LoadingStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStatus implements LoadingStatus {
  const _$LoadingStatus();

  @override
  String toString() {
    return 'StateStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PureStatus value) $default, {
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PureStatus value)? $default, {
    TResult? Function(LoadingStatus value)? loading,
    TResult? Function(SuccessStatus value)? success,
    TResult? Function(ErrorStatus value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PureStatus value)? $default, {
    TResult Function(LoadingStatus value)? loading,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStatus implements StateStatus {
  const factory LoadingStatus() = _$LoadingStatus;
}

/// @nodoc
abstract class _$$SuccessStatusCopyWith<$Res> {
  factory _$$SuccessStatusCopyWith(
          _$SuccessStatus value, $Res Function(_$SuccessStatus) then) =
      __$$SuccessStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$SuccessStatusCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$SuccessStatus>
    implements _$$SuccessStatusCopyWith<$Res> {
  __$$SuccessStatusCopyWithImpl(
      _$SuccessStatus _value, $Res Function(_$SuccessStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessStatus(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SuccessStatus implements SuccessStatus {
  const _$SuccessStatus([this.data]);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'StateStatus.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStatus &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStatusCopyWith<_$SuccessStatus> get copyWith =>
      __$$SuccessStatusCopyWithImpl<_$SuccessStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(String? message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PureStatus value) $default, {
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PureStatus value)? $default, {
    TResult? Function(LoadingStatus value)? loading,
    TResult? Function(SuccessStatus value)? success,
    TResult? Function(ErrorStatus value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PureStatus value)? $default, {
    TResult Function(LoadingStatus value)? loading,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessStatus implements StateStatus {
  const factory SuccessStatus([final dynamic data]) = _$SuccessStatus;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$SuccessStatusCopyWith<_$SuccessStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStatusCopyWith<$Res> {
  factory _$$ErrorStatusCopyWith(
          _$ErrorStatus value, $Res Function(_$ErrorStatus) then) =
      __$$ErrorStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorStatusCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$ErrorStatus>
    implements _$$ErrorStatusCopyWith<$Res> {
  __$$ErrorStatusCopyWithImpl(
      _$ErrorStatus _value, $Res Function(_$ErrorStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorStatus(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorStatus implements ErrorStatus {
  const _$ErrorStatus([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'StateStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStatus &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStatusCopyWith<_$ErrorStatus> get copyWith =>
      __$$ErrorStatusCopyWithImpl<_$ErrorStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PureStatus value) $default, {
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PureStatus value)? $default, {
    TResult? Function(LoadingStatus value)? loading,
    TResult? Function(SuccessStatus value)? success,
    TResult? Function(ErrorStatus value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PureStatus value)? $default, {
    TResult Function(LoadingStatus value)? loading,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorStatus implements StateStatus {
  const factory ErrorStatus([final String? message]) = _$ErrorStatus;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorStatusCopyWith<_$ErrorStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
