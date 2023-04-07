// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeRateDetailsState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  ExchangeRateDetail? get exchangeRateDetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRateDetailsStateCopyWith<ExchangeRateDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateDetailsStateCopyWith<$Res> {
  factory $ExchangeRateDetailsStateCopyWith(ExchangeRateDetailsState value,
          $Res Function(ExchangeRateDetailsState) then) =
      _$ExchangeRateDetailsStateCopyWithImpl<$Res, ExchangeRateDetailsState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String? errorMessage,
      ExchangeRateDetail? exchangeRateDetail});

  $ExchangeRateDetailCopyWith<$Res>? get exchangeRateDetail;
}

/// @nodoc
class _$ExchangeRateDetailsStateCopyWithImpl<$Res,
        $Val extends ExchangeRateDetailsState>
    implements $ExchangeRateDetailsStateCopyWith<$Res> {
  _$ExchangeRateDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = freezed,
    Object? exchangeRateDetail = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateDetail: freezed == exchangeRateDetail
          ? _value.exchangeRateDetail
          : exchangeRateDetail // ignore: cast_nullable_to_non_nullable
              as ExchangeRateDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeRateDetailCopyWith<$Res>? get exchangeRateDetail {
    if (_value.exchangeRateDetail == null) {
      return null;
    }

    return $ExchangeRateDetailCopyWith<$Res>(_value.exchangeRateDetail!,
        (value) {
      return _then(_value.copyWith(exchangeRateDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeRateDetailsStateCopyWith<$Res>
    implements $ExchangeRateDetailsStateCopyWith<$Res> {
  factory _$$_ExchangeRateDetailsStateCopyWith(
          _$_ExchangeRateDetailsState value,
          $Res Function(_$_ExchangeRateDetailsState) then) =
      __$$_ExchangeRateDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String? errorMessage,
      ExchangeRateDetail? exchangeRateDetail});

  @override
  $ExchangeRateDetailCopyWith<$Res>? get exchangeRateDetail;
}

/// @nodoc
class __$$_ExchangeRateDetailsStateCopyWithImpl<$Res>
    extends _$ExchangeRateDetailsStateCopyWithImpl<$Res,
        _$_ExchangeRateDetailsState>
    implements _$$_ExchangeRateDetailsStateCopyWith<$Res> {
  __$$_ExchangeRateDetailsStateCopyWithImpl(_$_ExchangeRateDetailsState _value,
      $Res Function(_$_ExchangeRateDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = freezed,
    Object? exchangeRateDetail = freezed,
  }) {
    return _then(_$_ExchangeRateDetailsState(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateDetail: freezed == exchangeRateDetail
          ? _value.exchangeRateDetail
          : exchangeRateDetail // ignore: cast_nullable_to_non_nullable
              as ExchangeRateDetail?,
    ));
  }
}

/// @nodoc

class _$_ExchangeRateDetailsState implements _ExchangeRateDetailsState {
  _$_ExchangeRateDetailsState(
      {this.stateStatus = StateStatus.initial,
      this.errorMessage = '',
      this.exchangeRateDetail});

  @override
  @JsonKey()
  final StateStatus stateStatus;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  final ExchangeRateDetail? exchangeRateDetail;

  @override
  String toString() {
    return 'ExchangeRateDetailsState(stateStatus: $stateStatus, errorMessage: $errorMessage, exchangeRateDetail: $exchangeRateDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRateDetailsState &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.exchangeRateDetail, exchangeRateDetail) ||
                other.exchangeRateDetail == exchangeRateDetail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stateStatus, errorMessage, exchangeRateDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateDetailsStateCopyWith<_$_ExchangeRateDetailsState>
      get copyWith => __$$_ExchangeRateDetailsStateCopyWithImpl<
          _$_ExchangeRateDetailsState>(this, _$identity);
}

abstract class _ExchangeRateDetailsState implements ExchangeRateDetailsState {
  factory _ExchangeRateDetailsState(
          {final StateStatus stateStatus,
          final String? errorMessage,
          final ExchangeRateDetail? exchangeRateDetail}) =
      _$_ExchangeRateDetailsState;

  @override
  StateStatus get stateStatus;
  @override
  String? get errorMessage;
  @override
  ExchangeRateDetail? get exchangeRateDetail;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateDetailsStateCopyWith<_$_ExchangeRateDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}
