// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rates.data.gql.g.dart';

abstract class GExchangeRatesData
    implements Built<GExchangeRatesData, GExchangeRatesDataBuilder> {
  GExchangeRatesData._();

  factory GExchangeRatesData([Function(GExchangeRatesDataBuilder b) updates]) =
      _$GExchangeRatesData;

  static void _initializeBuilder(GExchangeRatesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExchangeRatesData_exchangeRates> get exchangeRates;
  static Serializer<GExchangeRatesData> get serializer =>
      _$gExchangeRatesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRatesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRatesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRatesData.serializer,
        json,
      );
}

abstract class GExchangeRatesData_exchangeRates
    implements
        Built<GExchangeRatesData_exchangeRates,
            GExchangeRatesData_exchangeRatesBuilder> {
  GExchangeRatesData_exchangeRates._();

  factory GExchangeRatesData_exchangeRates(
          [Function(GExchangeRatesData_exchangeRatesBuilder b) updates]) =
      _$GExchangeRatesData_exchangeRates;

  static void _initializeBuilder(GExchangeRatesData_exchangeRatesBuilder b) =>
      b..G__typename = 'ExchangeRate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get code;
  BuiltList<double> get rates;
  static Serializer<GExchangeRatesData_exchangeRates> get serializer =>
      _$gExchangeRatesDataExchangeRatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRatesData_exchangeRates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRatesData_exchangeRates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRatesData_exchangeRates.serializer,
        json,
      );
}
