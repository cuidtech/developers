import 'package:exchange_rates/features/exchange_rates/data_source/queries/exchange_rate.query.dart';
import 'package:exchange_rates/features/exchange_rates/data_source/queries/exchange_rates.query.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@singleton
class ExchangeRateClient {
  ExchangeRateClient(
    this._graphQLClient,
  );

  final GraphQLClient _graphQLClient;

  Future<QueryResult> getExchangeList({int historyLength = 2}) async {
    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(exchangeRates),
        variables: {'historyLength': historyLength},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    return result;
  }

  Future<QueryResult> getSingleExchangeRate({
    required String code,
    int historyLength = 2,
  }) async {
    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(exchangeRate),
        variables: {'historyLength': historyLength, 'code': code},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
    return result;
  }
}
