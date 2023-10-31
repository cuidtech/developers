import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/icurrency_repository.dart';
import '../data/service/currencies_service.dart';
import 'entities/detailed_currency.dart';
import 'entities/currency.dart';

part 'currency_repository.g.dart';

@riverpod
CurrencyRepository currencyRepository(CurrencyRepositoryRef ref) {
  final currenciesService = ref.watch(currenciesServiceProvider);
  return ICurrencyRepository(currenciesService);
}

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();
  Future<DetailedCurrency> getCurrencyDetail(String code);
}
