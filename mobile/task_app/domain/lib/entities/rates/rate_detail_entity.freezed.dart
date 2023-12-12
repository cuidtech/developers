// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateDetailEntity _$RateDetailEntityFromJson(Map<String, dynamic> json) {
  return _RateDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$RateDetailEntity {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<double>? get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateDetailEntityCopyWith<RateDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDetailEntityCopyWith<$Res> {
  factory $RateDetailEntityCopyWith(
          RateDetailEntity value, $Res Function(RateDetailEntity) then) =
      _$RateDetailEntityCopyWithImpl<$Res, RateDetailEntity>;
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class _$RateDetailEntityCopyWithImpl<$Res, $Val extends RateDetailEntity>
    implements $RateDetailEntityCopyWith<$Res> {
  _$RateDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? rates = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateDetailEntityImplCopyWith<$Res>
    implements $RateDetailEntityCopyWith<$Res> {
  factory _$$RateDetailEntityImplCopyWith(_$RateDetailEntityImpl value,
          $Res Function(_$RateDetailEntityImpl) then) =
      __$$RateDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class __$$RateDetailEntityImplCopyWithImpl<$Res>
    extends _$RateDetailEntityCopyWithImpl<$Res, _$RateDetailEntityImpl>
    implements _$$RateDetailEntityImplCopyWith<$Res> {
  __$$RateDetailEntityImplCopyWithImpl(_$RateDetailEntityImpl _value,
      $Res Function(_$RateDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? rates = freezed,
  }) {
    return _then(_$RateDetailEntityImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateDetailEntityImpl extends _RateDetailEntity {
  const _$RateDetailEntityImpl(
      {this.code, this.description, final List<double>? rates})
      : _rates = rates,
        super._();

  factory _$RateDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateDetailEntityImplFromJson(json);

  @override
  final String? code;
  @override
  final String? description;
  final List<double>? _rates;
  @override
  List<double>? get rates {
    final value = _rates;
    if (value == null) return null;
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RateDetailEntity(code: $code, description: $description, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateDetailEntityImpl &&
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
  _$$RateDetailEntityImplCopyWith<_$RateDetailEntityImpl> get copyWith =>
      __$$RateDetailEntityImplCopyWithImpl<_$RateDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _RateDetailEntity extends RateDetailEntity {
  const factory _RateDetailEntity(
      {final String? code,
      final String? description,
      final List<double>? rates}) = _$RateDetailEntityImpl;
  const _RateDetailEntity._() : super._();

  factory _RateDetailEntity.fromJson(Map<String, dynamic> json) =
      _$RateDetailEntityImpl.fromJson;

  @override
  String? get code;
  @override
  String? get description;
  @override
  List<double>? get rates;
  @override
  @JsonKey(ignore: true)
  _$$RateDetailEntityImplCopyWith<_$RateDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
