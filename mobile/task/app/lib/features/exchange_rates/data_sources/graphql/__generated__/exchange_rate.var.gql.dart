// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rate.var.gql.g.dart';

abstract class GExchangeRateVars
    implements Built<GExchangeRateVars, GExchangeRateVarsBuilder> {
  GExchangeRateVars._();

  factory GExchangeRateVars([Function(GExchangeRateVarsBuilder b) updates]) =
      _$GExchangeRateVars;

  String get code;
  double? get historyLength;
  static Serializer<GExchangeRateVars> get serializer =>
      _$gExchangeRateVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExchangeRateVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExchangeRateVars.serializer,
        json,
      );
}
