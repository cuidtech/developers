
import 'package:dartz/dartz.dart';
import 'package:exchange_rates/features/exchange_rates/data_source/exchange_rate_client.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate_detail.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExchangeRateRepository {
  ExchangeRateRepository(this._exchangeRatesApiClient);

  final ExchangeRateClient _exchangeRatesApiClient;

  Future<Either<String?, List<ExchangeRate>>> getExchangeList({
    int historyLength = 2,
  }) async {
    final queryResult = await _exchangeRatesApiClient.getExchangeList(
      historyLength: historyLength,
    );

    if (queryResult.hasException) {
      return const Left('Unknown error');
    } else {
      final exchangeRates =
          (queryResult.data!['exchangeRates'] as List<dynamic>)
              .map((e) => ExchangeRate.fromJson(e as Map<String, dynamic>))
              .toList();

      final filteredExchangeRates = exchangeRates
          .map((e) => e.copyWith(isRising: e.rates[0] > e.rates[1]))
          .toList();

      return Right(filteredExchangeRates);
    }
  }

  Future<Either<String?, ExchangeRateDetail>> getSingleExchangeData(
    String code, {
    int historyLength = 2,
  }) async {
    final queryResult = await _exchangeRatesApiClient.getSingleExchangeRate(
      code: code,
      historyLength: historyLength,
    );
    if (queryResult.hasException) {
      return const Left('Unknown error');
    } else {
      final exchangeRateDetail = ExchangeRateDetail.fromJson(
        queryResult.data!['exchangeRate'] as Map<String, dynamic>,
      );

      return Right(exchangeRateDetail);
    }
  }
}
