// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rates.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExchangeRatesData> _$gExchangeRatesDataSerializer =
    new _$GExchangeRatesDataSerializer();
Serializer<GExchangeRatesData_exchangeRates>
    _$gExchangeRatesDataExchangeRatesSerializer =
    new _$GExchangeRatesData_exchangeRatesSerializer();

class _$GExchangeRatesDataSerializer
    implements StructuredSerializer<GExchangeRatesData> {
  @override
  final Iterable<Type> types = const [GExchangeRatesData, _$GExchangeRatesData];
  @override
  final String wireName = 'GExchangeRatesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExchangeRatesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'exchangeRates',
      serializers.serialize(object.exchangeRates,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GExchangeRatesData_exchangeRates)])),
    ];

    return result;
  }

  @override
  GExchangeRatesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExchangeRatesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'exchangeRates':
          result.exchangeRates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GExchangeRatesData_exchangeRates)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExchangeRatesData_exchangeRatesSerializer
    implements StructuredSerializer<GExchangeRatesData_exchangeRates> {
  @override
  final Iterable<Type> types = const [
    GExchangeRatesData_exchangeRates,
    _$GExchangeRatesData_exchangeRates
  ];
  @override
  final String wireName = 'GExchangeRatesData_exchangeRates';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExchangeRatesData_exchangeRates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  GExchangeRatesData_exchangeRates deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExchangeRatesData_exchangeRatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rates':
          result.rates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExchangeRatesData extends GExchangeRatesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GExchangeRatesData_exchangeRates> exchangeRates;

  factory _$GExchangeRatesData(
          [void Function(GExchangeRatesDataBuilder)? updates]) =>
      (new GExchangeRatesDataBuilder()..update(updates))._build();

  _$GExchangeRatesData._(
      {required this.G__typename, required this.exchangeRates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExchangeRatesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        exchangeRates, r'GExchangeRatesData', 'exchangeRates');
  }

  @override
  GExchangeRatesData rebuild(
          void Function(GExchangeRatesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRatesDataBuilder toBuilder() =>
      new GExchangeRatesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRatesData &&
        G__typename == other.G__typename &&
        exchangeRates == other.exchangeRates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, exchangeRates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExchangeRatesData')
          ..add('G__typename', G__typename)
          ..add('exchangeRates', exchangeRates))
        .toString();
  }
}

class GExchangeRatesDataBuilder
    implements Builder<GExchangeRatesData, GExchangeRatesDataBuilder> {
  _$GExchangeRatesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExchangeRatesData_exchangeRates>? _exchangeRates;
  ListBuilder<GExchangeRatesData_exchangeRates> get exchangeRates =>
      _$this._exchangeRates ??=
          new ListBuilder<GExchangeRatesData_exchangeRates>();
  set exchangeRates(
          ListBuilder<GExchangeRatesData_exchangeRates>? exchangeRates) =>
      _$this._exchangeRates = exchangeRates;

  GExchangeRatesDataBuilder() {
    GExchangeRatesData._initializeBuilder(this);
  }

  GExchangeRatesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _exchangeRates = $v.exchangeRates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExchangeRatesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRatesData;
  }

  @override
  void update(void Function(GExchangeRatesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRatesData build() => _build();

  _$GExchangeRatesData _build() {
    _$GExchangeRatesData _$result;
    try {
      _$result = _$v ??
          new _$GExchangeRatesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExchangeRatesData', 'G__typename'),
              exchangeRates: exchangeRates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exchangeRates';
        exchangeRates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExchangeRatesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExchangeRatesData_exchangeRates
    extends GExchangeRatesData_exchangeRates {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final BuiltList<double> rates;

  factory _$GExchangeRatesData_exchangeRates(
          [void Function(GExchangeRatesData_exchangeRatesBuilder)? updates]) =>
      (new GExchangeRatesData_exchangeRatesBuilder()..update(updates))._build();

  _$GExchangeRatesData_exchangeRates._(
      {required this.G__typename, required this.code, required this.rates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExchangeRatesData_exchangeRates', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GExchangeRatesData_exchangeRates', 'code');
    BuiltValueNullFieldError.checkNotNull(
        rates, r'GExchangeRatesData_exchangeRates', 'rates');
  }

  @override
  GExchangeRatesData_exchangeRates rebuild(
          void Function(GExchangeRatesData_exchangeRatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRatesData_exchangeRatesBuilder toBuilder() =>
      new GExchangeRatesData_exchangeRatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRatesData_exchangeRates &&
        G__typename == other.G__typename &&
        code == other.code &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExchangeRatesData_exchangeRates')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('rates', rates))
        .toString();
  }
}

class GExchangeRatesData_exchangeRatesBuilder
    implements
        Builder<GExchangeRatesData_exchangeRates,
            GExchangeRatesData_exchangeRatesBuilder> {
  _$GExchangeRatesData_exchangeRates? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<double>? _rates;
  ListBuilder<double> get rates => _$this._rates ??= new ListBuilder<double>();
  set rates(ListBuilder<double>? rates) => _$this._rates = rates;

  GExchangeRatesData_exchangeRatesBuilder() {
    GExchangeRatesData_exchangeRates._initializeBuilder(this);
  }

  GExchangeRatesData_exchangeRatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _rates = $v.rates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExchangeRatesData_exchangeRates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRatesData_exchangeRates;
  }

  @override
  void update(void Function(GExchangeRatesData_exchangeRatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRatesData_exchangeRates build() => _build();

  _$GExchangeRatesData_exchangeRates _build() {
    _$GExchangeRatesData_exchangeRates _$result;
    try {
      _$result = _$v ??
          new _$GExchangeRatesData_exchangeRates._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GExchangeRatesData_exchangeRates', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GExchangeRatesData_exchangeRates', 'code'),
              rates: rates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExchangeRatesData_exchangeRates', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
