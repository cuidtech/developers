// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/components/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.ast.gql.dart'
    as _i5;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.data.gql.dart'
    as _i2;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'exchange_rate.req.gql.g.dart';

abstract class GExchangeRateReq
    implements
        Built<GExchangeRateReq, GExchangeRateReqBuilder>,
        _i1.OperationRequest<_i2.GExchangeRateData, _i3.GExchangeRateVars> {
  GExchangeRateReq._();

  factory GExchangeRateReq([Function(GExchangeRateReqBuilder b) updates]) =
      _$GExchangeRateReq;

  static void _initializeBuilder(GExchangeRateReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ExchangeRate',
    )
    ..executeOnListen = true;
  @override
  _i3.GExchangeRateVars get vars;
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
  _i2.GExchangeRateData? Function(
    _i2.GExchangeRateData?,
    _i2.GExchangeRateData?,
  )? get updateResult;
  @override
  _i2.GExchangeRateData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GExchangeRateData? parseData(Map<String, dynamic> json) =>
      _i2.GExchangeRateData.fromJson(json);
  static Serializer<GExchangeRateReq> get serializer =>
      _$gExchangeRateReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExchangeRateReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExchangeRateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExchangeRateReq.serializer,
        json,
      );
}
