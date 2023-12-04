import 'package:graphql_flutter/graphql_flutter.dart';

import 'ExchangeRate.dart';

final HttpLink httpLink = HttpLink('http://10.0.2.2:4000/graphql/exchangeRate');

final GraphQLClient _client = GraphQLClient(
  link: httpLink,
  cache: GraphQLCache(),
);

class NetworkService {
  Future<List<ExchangeRate>> getExchangeRates({double? historyLength}) async {
    final QueryOptions options = QueryOptions(
      document: gql('''
        query GetExchangeRates(\$historyLength: Float) {
          exchangeRates(historyLength: \$historyLength) {
            code
            description
            rates
          }
        }
      '''),
      variables: {'historyLength': historyLength},
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      throw result.exception!;
    }

    final List<Map<String, dynamic>> exchangeRatesData =
        List<Map<String, dynamic>>.from(result.data!['exchangeRates']);
    return exchangeRatesData
        .map((data) => ExchangeRate.fromJson(data))
        .toList();
  }

  Future<ExchangeRate> getExchangeRate(String code,
      {double? historyLength}) async {
    final QueryOptions options = QueryOptions(
      document: gql('''
        query GetExchangeRate(\$code: String!, \$historyLength: Float) {
          exchangeRate(code: \$code, historyLength: \$historyLength) {
            code
            description
            rates
          }
        }
      '''),
      variables: {'code': code, 'historyLength': historyLength},
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      throw result.exception!;
    }

    final Map<String, dynamic> exchangeRateData =
        Map<String, dynamic>.from(result.data!['exchangeRate']);
    return ExchangeRate.fromJson(exchangeRateData);
  }
}
