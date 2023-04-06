// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.data.gql.dart'
    show GExchangeRateData, GExchangeRateData_exchangeRate;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.req.gql.dart'
    show GExchangeRateReq;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rate.var.gql.dart'
    show GExchangeRateVars;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.data.gql.dart'
    show GExchangeRatesData, GExchangeRatesData_exchangeRates;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.req.gql.dart'
    show GExchangeRatesReq;
import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.var.gql.dart'
    show GExchangeRatesVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GExchangeRateData,
  GExchangeRateData_exchangeRate,
  GExchangeRateReq,
  GExchangeRateVars,
  GExchangeRatesData,
  GExchangeRatesData_exchangeRates,
  GExchangeRatesReq,
  GExchangeRatesVars,
])
final Serializers serializers = _serializersBuilder.build();
