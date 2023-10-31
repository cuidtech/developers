import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';

import 'package:app/data/service/currencies_service.dart';
import 'package:app/data/models/currency_model.dart';
import 'package:app/data/models/detailed_currency_model.dart';

import '../mock_data.dart';

class MockGraphQLClient extends Mock implements GraphQLClient {}

void main() {
  late GraphQLClient client;
  late CurrenciesService currenciesService;

  setUp(() {
    client = MockGraphQLClient();
    currenciesService = CurrenciesService(client);
  });

  group('currencies service', () {
    test('getCurrencies returns a list of CurrencyModel', () async {
      final result = QueryResult<Object?>(
        options: getCurrenciesQueryOptions,
        source: QueryResultSource.network,
        data: getCurrenciesResponse,
      );

      when(() => client.query(getCurrenciesQueryOptions))
          .thenAnswer((_) async => result);

      final currencies = await currenciesService.getCurrencies();

      expect(currencies, isA<List<CurrencyModel>>());
      expect(currencies.length, equals(6));
    });

    test('getCurrencyDetail returns a DetailedCurrencyModel', () async {
      final result = QueryResult<Object?>(
        options: getCurrencyDetailQueryOptions(code),
        source: QueryResultSource.network,
        data: getCurrencyDetailResponse,
      );

      when(() => client.query(getCurrencyDetailQueryOptions(code)))
          .thenAnswer((_) async => result);

      final currency = await currenciesService.getCurrencyDetail(code);

      expect(currency, isA<DetailedCurrencyModel>());
      expect(currency.code, equals(code));
      expect(currency.description, equals(description));
      expect(currency.rates, equals(rates));
    });
  });
}
