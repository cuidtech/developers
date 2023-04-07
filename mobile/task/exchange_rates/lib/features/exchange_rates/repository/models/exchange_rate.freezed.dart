// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) {
  return _ExchangeRate.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRate {
  String get code => throw _privateConstructorUsedError;
  List<double> get rates => throw _privateConstructorUsedError;
  bool get isRising => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateCopyWith<ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res, ExchangeRate>;
  @useResult
  $Res call({String code, List<double> rates, bool isRising});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res, $Val extends ExchangeRate>
    implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rates = null,
    Object? isRising = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      isRising: null == isRising
          ? _value.isRising
          : isRising // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeRateCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$$_ExchangeRateCopyWith(
          _$_ExchangeRate value, $Res Function(_$_ExchangeRate) then) =
      __$$_ExchangeRateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, List<double> rates, bool isRising});
}

/// @nodoc
class __$$_ExchangeRateCopyWithImpl<$Res>
    extends _$ExchangeRateCopyWithImpl<$Res, _$_ExchangeRate>
    implements _$$_ExchangeRateCopyWith<$Res> {
  __$$_ExchangeRateCopyWithImpl(
      _$_ExchangeRate _value, $Res Function(_$_ExchangeRate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rates = null,
    Object? isRising = null,
  }) {
    return _then(_$_ExchangeRate(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      isRising: null == isRising
          ? _value.isRising
          : isRising // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRate implements _ExchangeRate {
  _$_ExchangeRate(
      {this.code = '',
      final List<double> rates = const [],
      this.isRising = false})
      : _rates = rates;

  factory _$_ExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateFromJson(json);

  @override
  @JsonKey()
  final String code;
  final List<double> _rates;
  @override
  @JsonKey()
  List<double> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  @JsonKey()
  final bool isRising;

  @override
  String toString() {
    return 'ExchangeRate(code: $code, rates: $rates, isRising: $isRising)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRate &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.isRising, isRising) ||
                other.isRising == isRising));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_rates), isRising);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateCopyWith<_$_ExchangeRate> get copyWith =>
      __$$_ExchangeRateCopyWithImpl<_$_ExchangeRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateToJson(
      this,
    );
  }
}

abstract class _ExchangeRate implements ExchangeRate {
  factory _ExchangeRate(
      {final String code,
      final List<double> rates,
      final bool isRising}) = _$_ExchangeRate;

  factory _ExchangeRate.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRate.fromJson;

  @override
  String get code;
  @override
  List<double> get rates;
  @override
  bool get isRising;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateCopyWith<_$_ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
