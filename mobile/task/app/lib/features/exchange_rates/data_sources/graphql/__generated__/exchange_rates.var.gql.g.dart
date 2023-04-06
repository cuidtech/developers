// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rates.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExchangeRatesVars> _$gExchangeRatesVarsSerializer =
    new _$GExchangeRatesVarsSerializer();

class _$GExchangeRatesVarsSerializer
    implements StructuredSerializer<GExchangeRatesVars> {
  @override
  final Iterable<Type> types = const [GExchangeRatesVars, _$GExchangeRatesVars];
  @override
  final String wireName = 'GExchangeRatesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExchangeRatesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GExchangeRatesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GExchangeRatesVarsBuilder().build();
  }
}

class _$GExchangeRatesVars extends GExchangeRatesVars {
  factory _$GExchangeRatesVars(
          [void Function(GExchangeRatesVarsBuilder)? updates]) =>
      (new GExchangeRatesVarsBuilder()..update(updates))._build();

  _$GExchangeRatesVars._() : super._();

  @override
  GExchangeRatesVars rebuild(
          void Function(GExchangeRatesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRatesVarsBuilder toBuilder() =>
      new GExchangeRatesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRatesVars;
  }

  @override
  int get hashCode {
    return 410398582;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GExchangeRatesVars').toString();
  }
}

class GExchangeRatesVarsBuilder
    implements Builder<GExchangeRatesVars, GExchangeRatesVarsBuilder> {
  _$GExchangeRatesVars? _$v;

  GExchangeRatesVarsBuilder();

  @override
  void replace(GExchangeRatesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRatesVars;
  }

  @override
  void update(void Function(GExchangeRatesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRatesVars build() => _build();

  _$GExchangeRatesVars _build() {
    final _$result = _$v ?? new _$GExchangeRatesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
