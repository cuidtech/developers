// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.ast.gql.dart'
    as _i5;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.data.gql.dart'
    as _i2;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'exchange_rates.req.gql.g.dart';

abstract class GExchangeRatesReq
    implements
        Built<GExchangeRatesReq, GExchangeRatesReqBuilder>,
        _i1.OperationRequest<_i2.GExchangeRatesData, _i3.GExchangeRatesVars> {
  GExchangeRatesReq._();

  factory GExchangeRatesReq([Function(GExchangeRatesReqBuilder b) updates]) =
      _$GExchangeRatesReq;

  static void _initializeBuilder(GExchangeRatesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ExchangeRates',
    )
    ..executeOnListen = true;
  @override
  _i3.GExchangeRatesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GExchangeRatesData? Function(
    _i2.GExchangeRatesData?,
    _i2.GExchangeRatesData?,
  )? get updateResult;
  @override
  _i2.GExchangeRatesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GExchangeRatesData? parseData(Map<String, dynamic> json) =>
      _i2.GExchangeRatesData.fromJson(json);
  static Serializer<GExchangeRatesReq> get serializer =>
      _$gExchangeRatesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExchangeRatesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRatesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExchangeRatesReq.serializer,
        json,
      );
}
