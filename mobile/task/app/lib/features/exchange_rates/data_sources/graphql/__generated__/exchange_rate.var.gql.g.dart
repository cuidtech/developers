// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExchangeRateVars> _$gExchangeRateVarsSerializer =
    new _$GExchangeRateVarsSerializer();

class _$GExchangeRateVarsSerializer
    implements StructuredSerializer<GExchangeRateVars> {
  @override
  final Iterable<Type> types = const [GExchangeRateVars, _$GExchangeRateVars];
  @override
  final String wireName = 'GExchangeRateVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GExchangeRateVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.historyLength;
    if (value != null) {
      result
        ..add('historyLength')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GExchangeRateVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExchangeRateVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'historyLength':
          result.historyLength = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GExchangeRateVars extends GExchangeRateVars {
  @override
  final String code;
  @override
  final double? historyLength;

  factory _$GExchangeRateVars(
          [void Function(GExchangeRateVarsBuilder)? updates]) =>
      (new GExchangeRateVarsBuilder()..update(updates))._build();

  _$GExchangeRateVars._({required this.code, this.historyLength}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'GExchangeRateVars', 'code');
  }

  @override
  GExchangeRateVars rebuild(void Function(GExchangeRateVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRateVarsBuilder toBuilder() =>
      new GExchangeRateVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRateVars &&
        code == other.code &&
        historyLength == other.historyLength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, historyLength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExchangeRateVars')
          ..add('code', code)
          ..add('historyLength', historyLength))
        .toString();
  }
}

class GExchangeRateVarsBuilder
    implements Builder<GExchangeRateVars, GExchangeRateVarsBuilder> {
  _$GExchangeRateVars? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  double? _historyLength;
  double? get historyLength => _$this._historyLength;
  set historyLength(double? historyLength) =>
      _$this._historyLength = historyLength;

  GExchangeRateVarsBuilder();

  GExchangeRateVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _historyLength = $v.historyLength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExchangeRateVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRateVars;
  }

  @override
  void update(void Function(GExchangeRateVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRateVars build() => _build();

  _$GExchangeRateVars _build() {
    final _$result = _$v ??
        new _$GExchangeRateVars._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GExchangeRateVars', 'code'),
            historyLength: historyLength);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
