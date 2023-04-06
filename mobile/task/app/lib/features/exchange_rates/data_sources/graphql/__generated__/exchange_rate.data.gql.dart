// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rate.data.gql.g.dart';

abstract class GExchangeRateData
    implements Built<GExchangeRateData, GExchangeRateDataBuilder> {
  GExchangeRateData._();

  factory GExchangeRateData([Function(GExchangeRateDataBuilder b) updates]) =
      _$GExchangeRateData;

  static void _initializeBuilder(GExchangeRateDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GExchangeRateData_exchangeRate get exchangeRate;
  static Serializer<GExchangeRateData> get serializer =>
      _$gExchangeRateDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRateData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRateData.serializer,
        json,
      );
}

abstract class GExchangeRateData_exchangeRate
    implements
        Built<GExchangeRateData_exchangeRate,
            GExchangeRateData_exchangeRateBuilder> {
  GExchangeRateData_exchangeRate._();

  factory GExchangeRateData_exchangeRate(
          [Function(GExchangeRateData_exchangeRateBuilder b) updates]) =
      _$GExchangeRateData_exchangeRate;

  static void _initializeBuilder(GExchangeRateData_exchangeRateBuilder b) =>
      b..G__typename = 'ExchangeRate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get code;
  String get description;
  BuiltList<double> get rates;
  static Serializer<GExchangeRateData_exchangeRate> get serializer =>
      _$gExchangeRateDataExchangeRateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRateData_exchangeRate.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRateData_exchangeRate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRateData_exchangeRate.serializer,
        json,
      );
}
