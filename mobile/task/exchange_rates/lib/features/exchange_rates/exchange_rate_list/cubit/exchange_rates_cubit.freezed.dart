// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rates_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeRatesState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<ExchangeRate> get exchangeRates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRatesStateCopyWith<ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesStateCopyWith<$Res> {
  factory $ExchangeRatesStateCopyWith(
          ExchangeRatesState value, $Res Function(ExchangeRatesState) then) =
      _$ExchangeRatesStateCopyWithImpl<$Res, ExchangeRatesState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String? errorMessage,
      List<ExchangeRate> exchangeRates});
}

/// @nodoc
class _$ExchangeRatesStateCopyWithImpl<$Res, $Val extends ExchangeRatesState>
    implements $ExchangeRatesStateCopyWith<$Res> {
  _$ExchangeRatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = freezed,
    Object? exchangeRates = null,
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
      exchangeRates: null == exchangeRates
          ? _value.exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeRatesStateCopyWith<$Res>
    implements $ExchangeRatesStateCopyWith<$Res> {
  factory _$$_ExchangeRatesStateCopyWith(_$_ExchangeRatesState value,
          $Res Function(_$_ExchangeRatesState) then) =
      __$$_ExchangeRatesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      String? errorMessage,
      List<ExchangeRate> exchangeRates});
}

/// @nodoc
class __$$_ExchangeRatesStateCopyWithImpl<$Res>
    extends _$ExchangeRatesStateCopyWithImpl<$Res, _$_ExchangeRatesState>
    implements _$$_ExchangeRatesStateCopyWith<$Res> {
  __$$_ExchangeRatesStateCopyWithImpl(
      _$_ExchangeRatesState _value, $Res Function(_$_ExchangeRatesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? errorMessage = freezed,
    Object? exchangeRates = null,
  }) {
    return _then(_$_ExchangeRatesState(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRates: null == exchangeRates
          ? _value._exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRate>,
    ));
  }
}

/// @nodoc

class _$_ExchangeRatesState implements _ExchangeRatesState {
  _$_ExchangeRatesState(
      {this.stateStatus = StateStatus.initial,
      this.errorMessage = '',
      final List<ExchangeRate> exchangeRates = const []})
      : _exchangeRates = exchangeRates;

  @override
  @JsonKey()
  final StateStatus stateStatus;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<ExchangeRate> _exchangeRates;
  @override
  @JsonKey()
  List<ExchangeRate> get exchangeRates {
    if (_exchangeRates is EqualUnmodifiableListView) return _exchangeRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeRates);
  }

  @override
  String toString() {
    return 'ExchangeRatesState(stateStatus: $stateStatus, errorMessage: $errorMessage, exchangeRates: $exchangeRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRatesState &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._exchangeRates, _exchangeRates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, errorMessage,
      const DeepCollectionEquality().hash(_exchangeRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      __$$_ExchangeRatesStateCopyWithImpl<_$_ExchangeRatesState>(
          this, _$identity);
}

abstract class _ExchangeRatesState implements ExchangeRatesState {
  factory _ExchangeRatesState(
      {final StateStatus stateStatus,
      final String? errorMessage,
      final List<ExchangeRate> exchangeRates}) = _$_ExchangeRatesState;

  @override
  StateStatus get stateStatus;
  @override
  String? get errorMessage;
  @override
  List<ExchangeRate> get exchangeRates;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
