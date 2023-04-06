import 'package:app/features/exchange_rates/data_sources/graphql/__generated__/exchange_rates.req.gql.dart';
import 'package:app/features/exchange_rates/models/dto.dart';
import 'package:app/features/exchange_rates/models/exchange_rate.dart';
import 'package:app/features/exchange_rates/repository/i_exchange_rates_repository.dart';
import 'package:ferry/ferry.dart';

import '../data_sources/graphql/__generated__/exchange_rate.req.gql.dart';

class ExchangeRatesRepository extends IExchangeRatesRepository {
  final Client _graphQLClient;

  ExchangeRatesRepository({required Client graphQLClient}) : _graphQLClient = graphQLClient;

  @override
  Future<List<ExchangeRate>?> fetchExchangeRates({int? historyLenght}) async {
    try {
      final req = GExchangeRatesReq();

      final response = await _graphQLClient.request(req).first;

      return response.data?.exchangeRates.map((data) => fromRemoteRateData(data)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ExchangeRate?> getExchangeRateFromCode({required String code, int? historyLenght}) async {
    try {
      final req = GExchangeRateReq(
        (b) => b
          ..vars.code = code
          ..vars.historyLength = historyLenght?.toDouble(),
      );

      final response = await _graphQLClient.request(req).first;

      return fromRemoteRatesData(response.data?.exchangeRate);
    } catch (e) {
      rethrow;
    }
  }
}
