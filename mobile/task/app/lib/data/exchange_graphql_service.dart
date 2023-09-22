import 'package:app/domain/models/exchange_model.dart';
import 'package:graphql/client.dart';

class ExchangeService {
  final _graphQLEndpoint = HttpLink(
    'http://localhost:4000/graphql',
  );

  Future<List<ExchangeRate>> getAllRates() async {
    String query = '''
        query GetExchangeRates {
          exchangeRates(historyLength: 2) {
            code
            description
            rates
          }
        }
      ''';

    try {
      final GraphQLClient client = GraphQLClient(
        link: _graphQLEndpoint,
        cache: GraphQLCache(),
      );

      final QueryOptions options = QueryOptions(
        document: gql(query),
      );

      final QueryResult result = await client.query(options);

      return (result.data?['exchangeRates'] as List<dynamic>)
          .map((data) => ExchangeRate(
                code: data['code'],
                desc: data['description'],
                rates: List<double>.from(data['rates']),
              ))
          .toList();
    } catch (e) {
      return [];
    }
  }

  Future<ExchangeRate?> getRateByCode(String code) async {
    String query = '''
        query GetExchangeRateByCode(\$code: String!) {
          exchangeRate(code: \$code) {
            code
            description
            rates
          }
        }
      ''';

    try {
      final GraphQLClient client = GraphQLClient(
        link: _graphQLEndpoint,
        cache: GraphQLCache(),
      );

      final QueryOptions options = QueryOptions(
        document: gql(query),
        variables: {'code': code},
      );

      final QueryResult result = await client.query(options);

      final data = result.data?['exchangeRate'];

      if (data != null) {
        return ExchangeRate(
          code: data['code'],
          desc: data['description'],
          rates: List<double>.from(data['rates']),
        );
      }
    } catch (e) {
      return null;
    }
    
    return null;
  }
}
