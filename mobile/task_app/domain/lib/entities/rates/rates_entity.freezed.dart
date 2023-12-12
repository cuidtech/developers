// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatesEntity _$RatesEntityFromJson(Map<String, dynamic> json) {
  return _RatesEntity.fromJson(json);
}

/// @nodoc
mixin _$RatesEntity {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<double>? get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatesEntityCopyWith<RatesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesEntityCopyWith<$Res> {
  factory $RatesEntityCopyWith(
          RatesEntity value, $Res Function(RatesEntity) then) =
      _$RatesEntityCopyWithImpl<$Res, RatesEntity>;
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class _$RatesEntityCopyWithImpl<$Res, $Val extends RatesEntity>
    implements $RatesEntityCopyWith<$Res> {
  _$RatesEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RatesEntityImplCopyWith<$Res>
    implements $RatesEntityCopyWith<$Res> {
  factory _$$RatesEntityImplCopyWith(
          _$RatesEntityImpl value, $Res Function(_$RatesEntityImpl) then) =
      __$$RatesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class __$$RatesEntityImplCopyWithImpl<$Res>
    extends _$RatesEntityCopyWithImpl<$Res, _$RatesEntityImpl>
    implements _$$RatesEntityImplCopyWith<$Res> {
  __$$RatesEntityImplCopyWithImpl(
      _$RatesEntityImpl _value, $Res Function(_$RatesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? rates = freezed,
  }) {
    return _then(_$RatesEntityImpl(
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
class _$RatesEntityImpl extends _RatesEntity {
  const _$RatesEntityImpl(
      {this.code, this.description, final List<double>? rates})
      : _rates = rates,
        super._();

  factory _$RatesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatesEntityImplFromJson(json);

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
    return 'RatesEntity(code: $code, description: $description, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesEntityImpl &&
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
  _$$RatesEntityImplCopyWith<_$RatesEntityImpl> get copyWith =>
      __$$RatesEntityImplCopyWithImpl<_$RatesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatesEntityImplToJson(
      this,
    );
  }
}

abstract class _RatesEntity extends RatesEntity {
  const factory _RatesEntity(
      {final String? code,
      final String? description,
      final List<double>? rates}) = _$RatesEntityImpl;
  const _RatesEntity._() : super._();

  factory _RatesEntity.fromJson(Map<String, dynamic> json) =
      _$RatesEntityImpl.fromJson;

  @override
  String? get code;
  @override
  String? get description;
  @override
  List<double>? get rates;
  @override
  @JsonKey(ignore: true)
  _$$RatesEntityImplCopyWith<_$RatesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
