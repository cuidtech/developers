// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExchangeRateData> _$gExchangeRateDataSerializer =
    new _$GExchangeRateDataSerializer();
Serializer<GExchangeRateData_exchangeRate>
    _$gExchangeRateDataExchangeRateSerializer =
    new _$GExchangeRateData_exchangeRateSerializer();

class _$GExchangeRateDataSerializer
    implements StructuredSerializer<GExchangeRateData> {
  @override
  final Iterable<Type> types = const [GExchangeRateData, _$GExchangeRateData];
  @override
  final String wireName = 'GExchangeRateData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GExchangeRateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'exchangeRate',
      serializers.serialize(object.exchangeRate,
          specifiedType: const FullType(GExchangeRateData_exchangeRate)),
    ];

    return result;
  }

  @override
  GExchangeRateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExchangeRateDataBuilder();

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
        case 'exchangeRate':
          result.exchangeRate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExchangeRateData_exchangeRate))!
              as GExchangeRateData_exchangeRate);
          break;
      }
    }

    return result.build();
  }
}

class _$GExchangeRateData_exchangeRateSerializer
    implements StructuredSerializer<GExchangeRateData_exchangeRate> {
  @override
  final Iterable<Type> types = const [
    GExchangeRateData_exchangeRate,
    _$GExchangeRateData_exchangeRate
  ];
  @override
  final String wireName = 'GExchangeRateData_exchangeRate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExchangeRateData_exchangeRate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  GExchangeRateData_exchangeRate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExchangeRateData_exchangeRateBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$GExchangeRateData extends GExchangeRateData {
  @override
  final String G__typename;
  @override
  final GExchangeRateData_exchangeRate exchangeRate;

  factory _$GExchangeRateData(
          [void Function(GExchangeRateDataBuilder)? updates]) =>
      (new GExchangeRateDataBuilder()..update(updates))._build();

  _$GExchangeRateData._({required this.G__typename, required this.exchangeRate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExchangeRateData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        exchangeRate, r'GExchangeRateData', 'exchangeRate');
  }

  @override
  GExchangeRateData rebuild(void Function(GExchangeRateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRateDataBuilder toBuilder() =>
      new GExchangeRateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRateData &&
        G__typename == other.G__typename &&
        exchangeRate == other.exchangeRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, exchangeRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExchangeRateData')
          ..add('G__typename', G__typename)
          ..add('exchangeRate', exchangeRate))
        .toString();
  }
}

class GExchangeRateDataBuilder
    implements Builder<GExchangeRateData, GExchangeRateDataBuilder> {
  _$GExchangeRateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GExchangeRateData_exchangeRateBuilder? _exchangeRate;
  GExchangeRateData_exchangeRateBuilder get exchangeRate =>
      _$this._exchangeRate ??= new GExchangeRateData_exchangeRateBuilder();
  set exchangeRate(GExchangeRateData_exchangeRateBuilder? exchangeRate) =>
      _$this._exchangeRate = exchangeRate;

  GExchangeRateDataBuilder() {
    GExchangeRateData._initializeBuilder(this);
  }

  GExchangeRateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _exchangeRate = $v.exchangeRate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExchangeRateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRateData;
  }

  @override
  void update(void Function(GExchangeRateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRateData build() => _build();

  _$GExchangeRateData _build() {
    _$GExchangeRateData _$result;
    try {
      _$result = _$v ??
          new _$GExchangeRateData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExchangeRateData', 'G__typename'),
              exchangeRate: exchangeRate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exchangeRate';
        exchangeRate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExchangeRateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExchangeRateData_exchangeRate extends GExchangeRateData_exchangeRate {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String description;
  @override
  final BuiltList<double> rates;

  factory _$GExchangeRateData_exchangeRate(
          [void Function(GExchangeRateData_exchangeRateBuilder)? updates]) =>
      (new GExchangeRateData_exchangeRateBuilder()..update(updates))._build();

  _$GExchangeRateData_exchangeRate._(
      {required this.G__typename,
      required this.code,
      required this.description,
      required this.rates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExchangeRateData_exchangeRate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GExchangeRateData_exchangeRate', 'code');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GExchangeRateData_exchangeRate', 'description');
    BuiltValueNullFieldError.checkNotNull(
        rates, r'GExchangeRateData_exchangeRate', 'rates');
  }

  @override
  GExchangeRateData_exchangeRate rebuild(
          void Function(GExchangeRateData_exchangeRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExchangeRateData_exchangeRateBuilder toBuilder() =>
      new GExchangeRateData_exchangeRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExchangeRateData_exchangeRate &&
        G__typename == other.G__typename &&
        code == other.code &&
        description == other.description &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExchangeRateData_exchangeRate')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('description', description)
          ..add('rates', rates))
        .toString();
  }
}

class GExchangeRateData_exchangeRateBuilder
    implements
        Builder<GExchangeRateData_exchangeRate,
            GExchangeRateData_exchangeRateBuilder> {
  _$GExchangeRateData_exchangeRate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<double>? _rates;
  ListBuilder<double> get rates => _$this._rates ??= new ListBuilder<double>();
  set rates(ListBuilder<double>? rates) => _$this._rates = rates;

  GExchangeRateData_exchangeRateBuilder() {
    GExchangeRateData_exchangeRate._initializeBuilder(this);
  }

  GExchangeRateData_exchangeRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _description = $v.description;
      _rates = $v.rates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExchangeRateData_exchangeRate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExchangeRateData_exchangeRate;
  }

  @override
  void update(void Function(GExchangeRateData_exchangeRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExchangeRateData_exchangeRate build() => _build();

  _$GExchangeRateData_exchangeRate _build() {
    _$GExchangeRateData_exchangeRate _$result;
    try {
      _$result = _$v ??
          new _$GExchangeRateData_exchangeRate._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GExchangeRateData_exchangeRate', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GExchangeRateData_exchangeRate', 'code'),
              description: BuiltValueNullFieldError.checkNotNull(description,
                  r'GExchangeRateData_exchangeRate', 'description'),
              rates: rates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExchangeRateData_exchangeRate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
