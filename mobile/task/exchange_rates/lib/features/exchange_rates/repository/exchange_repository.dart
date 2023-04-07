import 'dart:developer';

import 'package:exchange_rates/features/exchange_rates/data_source/exchange_rate_client.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate_detail.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExchangeRateRepository {
  ExchangeRateRepository(this._exchangeRatesApiClient);

  final ExchangeRateClient _exchangeRatesApiClient;

  Future<List<ExchangeRate>> getExchangeList({
    int historyLength = 30,
  }) async {
    final queryResult = await _exchangeRatesApiClient.getExchangeList(
      historyLength: historyLength,
    );
    log('result: ${queryResult.data}');

    final exchangeRates = (queryResult.data!['exchangeRates'] as List<dynamic>)
        .map((e) => ExchangeRate.fromJson(e as Map<String, dynamic>))
        .toList();

    final filteredExchangeRates = exchangeRates
        .map((e) => e.copyWith(isRising: e.rates[0] > e.rates[1]))
        .toList();

    return filteredExchangeRates;
  }

  Future<ExchangeRateDetail> getSingleExchangeData(
    String code, {
    int historyLength = 30,
  }) async {
    final queryResult = await _exchangeRatesApiClient.getSingleExchangeRate(
      code: code,
      historyLength: historyLength,
    );
    log('result: ${queryResult.data}');

    final exchangeRateDetail = ExchangeRateDetail.fromJson(
      queryResult.data!['exchangeRate'] as Map<String, dynamic>,
    );

    return exchangeRateDetail;
  }
}
