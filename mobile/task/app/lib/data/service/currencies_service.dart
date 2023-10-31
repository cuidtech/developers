import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/graphql_client.dart';
import '../models/currency_model.dart';
import '../models/detailed_currency_model.dart';

part 'currencies_service.g.dart';

@visibleForTesting
const getCurrenciesQuery = r'''
  {
    exchangeRates(historyLength: 2) {
      code
      rates
    }
  }
''';

@visibleForTesting
const getCurrencyDetailQuery = r'''
  {
    exchangeRate(code: $code) {
		  code
      description
      rates
    }
  }
''';

@visibleForTesting
final getCurrenciesQueryOptions = QueryOptions(
  document: gql(getCurrenciesQuery),
);

@visibleForTesting
QueryOptions getCurrencyDetailQueryOptions(String code) {
  return QueryOptions(
    document: gql(getCurrencyDetailQuery),
    variables: {'code': code},
  );
}

@riverpod
CurrenciesService currenciesService(CurrenciesServiceRef ref) {
  return CurrenciesService(ref.watch(graphQlClientProvider));
}

class CurrenciesService {
  const CurrenciesService(this._client);

  final GraphQLClient _client;

  Future<List<CurrencyModel>> getCurrencies() async {
    final result = await _client.query(getCurrenciesQueryOptions);

    if (result.hasException) throw result.exception!;

    return (result.data?['exchangeRates'] as List<Map<String, dynamic>>)
        .map((e) => CurrencyModel.fromJson(e))
        .toList();
  }

  Future<DetailedCurrencyModel> getCurrencyDetail(String code) async {
    final result = await _client.query(getCurrencyDetailQueryOptions(code));

    if (result.hasException) throw result.exception!;

    return DetailedCurrencyModel.fromJson(
      result.data?['exchangeRate'] as Map<String, dynamic>,
    );
  }
}
