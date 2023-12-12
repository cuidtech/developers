// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatesModel _$RatesModelFromJson(Map<String, dynamic> json) {
  return _RatesModel.fromJson(json);
}

/// @nodoc
mixin _$RatesModel {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<double>? get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatesModelCopyWith<RatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesModelCopyWith<$Res> {
  factory $RatesModelCopyWith(
          RatesModel value, $Res Function(RatesModel) then) =
      _$RatesModelCopyWithImpl<$Res, RatesModel>;
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class _$RatesModelCopyWithImpl<$Res, $Val extends RatesModel>
    implements $RatesModelCopyWith<$Res> {
  _$RatesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RatesModelImplCopyWith<$Res>
    implements $RatesModelCopyWith<$Res> {
  factory _$$RatesModelImplCopyWith(
          _$RatesModelImpl value, $Res Function(_$RatesModelImpl) then) =
      __$$RatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? description, List<double>? rates});
}

/// @nodoc
class __$$RatesModelImplCopyWithImpl<$Res>
    extends _$RatesModelCopyWithImpl<$Res, _$RatesModelImpl>
    implements _$$RatesModelImplCopyWith<$Res> {
  __$$RatesModelImplCopyWithImpl(
      _$RatesModelImpl _value, $Res Function(_$RatesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? rates = freezed,
  }) {
    return _then(_$RatesModelImpl(
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
class _$RatesModelImpl extends _RatesModel {
  const _$RatesModelImpl(
      {this.code, this.description, final List<double>? rates})
      : _rates = rates,
        super._();

  factory _$RatesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatesModelImplFromJson(json);

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
    return 'RatesModel(code: $code, description: $description, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesModelImpl &&
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
  _$$RatesModelImplCopyWith<_$RatesModelImpl> get copyWith =>
      __$$RatesModelImplCopyWithImpl<_$RatesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatesModelImplToJson(
      this,
    );
  }
}

abstract class _RatesModel extends RatesModel {
  const factory _RatesModel(
      {final String? code,
      final String? description,
      final List<double>? rates}) = _$RatesModelImpl;
  const _RatesModel._() : super._();

  factory _RatesModel.fromJson(Map<String, dynamic> json) =
      _$RatesModelImpl.fromJson;

  @override
  String? get code;
  @override
  String? get description;
  @override
  List<double>? get rates;
  @override
  @JsonKey(ignore: true)
  _$$RatesModelImplCopyWith<_$RatesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
