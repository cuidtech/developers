import '../models/exchange_rate.dart';

abstract class IExchangeRatesRepository {
  Future<List<ExchangeRate>?> fetchExchangeRates({int? historyLenght});
  Future<ExchangeRate?> getExchangeRateFromCode({required String code, int? historyLenght});
}
