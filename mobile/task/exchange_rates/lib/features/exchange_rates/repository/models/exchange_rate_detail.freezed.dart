// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRateDetail _$ExchangeRateDetailFromJson(Map<String, dynamic> json) {
  return _ExchangeRateDetail.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRateDetail {
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<double> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateDetailCopyWith<ExchangeRateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateDetailCopyWith<$Res> {
  factory $ExchangeRateDetailCopyWith(
          ExchangeRateDetail value, $Res Function(ExchangeRateDetail) then) =
      _$ExchangeRateDetailCopyWithImpl<$Res, ExchangeRateDetail>;
  @useResult
  $Res call({String code, String description, List<double> rates});
}

/// @nodoc
class _$ExchangeRateDetailCopyWithImpl<$Res, $Val extends ExchangeRateDetail>
    implements $ExchangeRateDetailCopyWith<$Res> {
  _$ExchangeRateDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeRateDetailCopyWith<$Res>
    implements $ExchangeRateDetailCopyWith<$Res> {
  factory _$$_ExchangeRateDetailCopyWith(_$_ExchangeRateDetail value,
          $Res Function(_$_ExchangeRateDetail) then) =
      __$$_ExchangeRateDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String description, List<double> rates});
}

/// @nodoc
class __$$_ExchangeRateDetailCopyWithImpl<$Res>
    extends _$ExchangeRateDetailCopyWithImpl<$Res, _$_ExchangeRateDetail>
    implements _$$_ExchangeRateDetailCopyWith<$Res> {
  __$$_ExchangeRateDetailCopyWithImpl(
      _$_ExchangeRateDetail _value, $Res Function(_$_ExchangeRateDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? rates = null,
  }) {
    return _then(_$_ExchangeRateDetail(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRateDetail implements _ExchangeRateDetail {
  _$_ExchangeRateDetail(
      {this.code = '',
      this.description = '',
      final List<double> rates = const []})
      : _rates = rates;

  factory _$_ExchangeRateDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateDetailFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String description;
  final List<double> _rates;
  @override
  @JsonKey()
  List<double> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  String toString() {
    return 'ExchangeRateDetail(code: $code, description: $description, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRateDetail &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, description,
      const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateDetailCopyWith<_$_ExchangeRateDetail> get copyWith =>
      __$$_ExchangeRateDetailCopyWithImpl<_$_ExchangeRateDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateDetailToJson(
      this,
    );
  }
}

abstract class _ExchangeRateDetail implements ExchangeRateDetail {
  factory _ExchangeRateDetail(
      {final String code,
      final String description,
      final List<double> rates}) = _$_ExchangeRateDetail;

  factory _ExchangeRateDetail.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateDetail.fromJson;

  @override
  String get code;
  @override
  String get description;
  @override
  List<double> get rates;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateDetailCopyWith<_$_ExchangeRateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
