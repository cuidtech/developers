// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rates.var.gql.g.dart';

abstract class GExchangeRatesVars
    implements Built<GExchangeRatesVars, GExchangeRatesVarsBuilder> {
  GExchangeRatesVars._();

  factory GExchangeRatesVars([Function(GExchangeRatesVarsBuilder b) updates]) =
      _$GExchangeRatesVars;

  static Serializer<GExchangeRatesVars> get serializer =>
      _$gExchangeRatesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRatesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRatesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRatesVars.serializer,
        json,
      );
}
